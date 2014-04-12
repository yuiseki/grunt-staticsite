#!/bin/bash
# nave
if [! -e nave.sh]; then
    echo "nave.sh not found. install..."
    curl -o nave.sh -L https://github.com/isaacs/nave/raw/master/nave.sh
fi
NODE_VER = 0.10.16
nave.sh install ${NODE_VER}
export PATH=~/.nave/installed/${NODE_VER}/bin/:$PATH
# npm
npm install grunt-cli -g
npm install bower -g
npm install
# bower
bower install

# compass gem
sudo gem install compass -V --no-ri --no-rdoc

echo "install finish."
