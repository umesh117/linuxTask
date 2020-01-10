echo "Enter directory name:"
read dir_name
mkdir $dir_name
cd $dir_name
echo "Enter HTML file name:"
read html_fname
touch $html_fname".html"
echo "Enter username:"
read username
{
echo "<!DOCTYPE html>"
echo "<html lang="en">"
echo "<head>"
    echo "<meta charset="UTF-8">"
    echo "<title>Title</title>"
    echo "</head>"
echo "<body>"
echo "<h1> Welcome $username!</h1>"
echo "</body>"
echo "</html>"
}>> $html_fname".html"

start "chrome" $html_fname".html"

cd ..
cd ..
git init
git add LinuxPack
git commit -m "Creation html file_linux2"
git remote add origin "https://github.com/umesh117/linuxTask.git"
git remote -v
git push origin linux
