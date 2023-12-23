if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Unknownforall1/MineDbBot.git /MineDbBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MineDbBot
fi
cd /MineDbBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
