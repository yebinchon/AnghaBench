
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WI_drawDeathmatchStats () ;
 int WI_drawNetgameStats () ;
 int WI_drawNoState () ;
 int WI_drawShowNextLoc () ;
 int WI_drawStats () ;
 int deathmatch ;
 int netgame ;
 int state ;

void WI_Drawer (void)
{
    switch (state)
    {
      case 128:
 if (deathmatch)
     WI_drawDeathmatchStats();
 else if (netgame)
     WI_drawNetgameStats();
 else
     WI_drawStats();
 break;

      case 129:
 WI_drawShowNextLoc();
 break;

      case 130:
 WI_drawNoState();
 break;
    }
}
