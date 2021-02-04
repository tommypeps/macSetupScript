#!/bin/bash

echo "Install Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Install rvm"
\curl -sSL https://get.rvm.io | bash -s stable
echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

echo "Install brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Z script..."
curl -o ~/scritps/z.sh --create-dirs https://raw.githubusercontent.com/rupa/z/master/z.sh | bash
chmod +x ~/scritps/z.sh
echo "source ~/scritps/z.sh" >> ~/.zshrc
>> ~/.zshrc

echo "Install utilitis ..."
brew install nmap
brew install tree
brew install wget
brew install npm
npm install --global trash-cli
brew cask install gswitch

echo "Install apps software ..."
brew cask install postman
brew cask install sourcetree
brew cask install sublime-text
brew cask install Opera
brew cask install fastlane
brew cask install slack
brew cask install firefox
brew cask install Opera
brew cask install skype
brew cask install clipy
brew cask install proxyman
brew cask install xrg
brew cask install keka
brew cask install overkill
brew cask install visual-studio-code
brew cask install microsoft-teams
brew cask install captain
brew cask install dockers
brew cask install macdown
brew cask install sequel-pro
brew cask install robo-3t
brew install --cask android-studio

echo "Install plugins ..."
brew cask install betterzip
brew cask install quicklook-json
brew cask install provisionql
brew cask install qlvideo

echo "Install other apps ..."
brew cask install jdownloader
brew cask install virtualbox
brew cask install spotify 
brew cask install transmission
brew cask install HandBrake

echo "Clean"
brew cleanup
brew cask cleanup

echo "add alias ..."

echo "
alias lt='ls -lGt'
alias ll='ls -lG'
alias la='ls -la'
alias ip='curl ipecho.net/plain; echo'
alias prettyJson='python -m json.tool'
alias h='history'
alias c='clear'
alias rm='trash'
" >> ~/.zshrc

curl -o ~/scritps/z.sh --create-dirs https://raw.githubusercontent.com/rupa/z/master/z.sh | bash
chmod +x ~/scritps/z.sh 
echo "source ~/scritps/z.sh" >> ~/.zshrc

echo "Done!"
