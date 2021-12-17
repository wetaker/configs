#!/bin/zsh



# Install oh-my-zsh
echo "Installing oh-my-zsh"
curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > install.sh
sh install.sh --unattended
rm install.sh


# Install Homebrew
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"chmod +x install.sh
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc

# Install coreutils
brew install coreutils

# Install fd
brew install fd

# Install TMUX
brew install tmux

# TMUX themes
[ ! -f ~/.tmux-themepack ] && git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
echo "source-file ${HOME}/.tmux-themepack/powerline/default/cyan.tmuxtheme" >> ~/.tmux.conf

# Install FZF
brew install fzf
/opt/homebrew/opt/fzf/install


# Load configs
echo "source `realpath ./configs`" >> ~/.zshrc

# Load aliases
echo "source `realpath ./aliases`" >> ~/.zshrc

