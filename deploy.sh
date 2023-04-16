if [ -d "./.git" ]; then
    git add --all
    git commit -m 'First commit.' 
    # git push --set-upstream origin master 
    git push -u origin master 
else
    # rm -rf .git 
    git init 
    git add --all 
    git commit -m 'First commit.' 
    # if 'error: remote origin already exists.' 
    # git remote rm origin 
    git remote add origin git@github.com:ychda/linux-6.2.11.git
    git push -f git@github.com:ychda/linux-6.2.11.git master:master
fi
