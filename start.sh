if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yagami891/video-file/video-file
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /video-file
fi
cd /video-file
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
