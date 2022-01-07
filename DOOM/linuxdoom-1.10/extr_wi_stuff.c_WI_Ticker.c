
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_ChangeMusic (int ,int) ;


 int WI_checkForAccelerate () ;
 int WI_updateDeathmatchStats () ;
 int WI_updateNetgameStats () ;
 int WI_updateNoState () ;
 int WI_updateShowNextLoc () ;
 int WI_updateStats () ;
 int bcnt ;
 scalar_t__ commercial ;
 int deathmatch ;
 scalar_t__ gamemode ;
 int mus_dm2int ;
 int mus_inter ;
 int netgame ;
 int state ;

void WI_Ticker(void)
{

    bcnt++;

    if (bcnt == 1)
    {

   if ( gamemode == commercial )
   S_ChangeMusic(mus_dm2int, 1);
 else
   S_ChangeMusic(mus_inter, 1);
    }

    WI_checkForAccelerate();

    switch (state)
    {
      case 128:
 if (deathmatch) WI_updateDeathmatchStats();
 else if (netgame) WI_updateNetgameStats();
 else WI_updateStats();
 break;

      case 129:
 WI_updateShowNextLoc();
 break;

      case 130:
 WI_updateNoState();
 break;
    }

}
