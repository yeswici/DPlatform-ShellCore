#!/bin/sh

. sysutils/nodejs.sh

# Install Meteor
# https://github.com/4commerce-technologies-AG/meteor
if [ $ARCH = arm* ]
  then cd $HOME
  git clone --depth 1 https://github.com/4commerce-technologies-AG/meteor.git
  # Check installed version, try to download a compatible pre-built dev_bundle and finish the installation
  meteor/meteor --version
  cd $DIR
else
  curl https://install.meteor.com/ | sh
fi
# Install Reaction
git clone https://github.com/reactioncommerce/reaction.git

# Start the latest release
cd reaction && git checkout master # default branch is development
reaction
