
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playerstate; } ;


 int GS_DEMOSCREEN ;
 int G_DeferedPlayDemo (char*) ;
 int PST_LIVE ;
 int S_StartMusic (int ) ;
 int advancedemo ;
 scalar_t__ commercial ;
 size_t consoleplayer ;
 int demosequence ;
 int ga_nothing ;
 int gameaction ;
 scalar_t__ gamemode ;
 int gamestate ;
 int mus_dm2ttl ;
 int mus_intro ;
 char* pagename ;
 int pagetic ;
 int paused ;
 TYPE_1__* players ;
 scalar_t__ retail ;
 int usergame ;

void D_DoAdvanceDemo (void)
{
    players[consoleplayer].playerstate = PST_LIVE;
    advancedemo = 0;
    usergame = 0;
    paused = 0;
    gameaction = ga_nothing;

    if ( gamemode == retail )
      demosequence = (demosequence+1)%7;
    else
      demosequence = (demosequence+1)%6;

    switch (demosequence)
    {
      case 0:
 if ( gamemode == commercial )
     pagetic = 35 * 11;
 else
     pagetic = 170;
 gamestate = GS_DEMOSCREEN;
 pagename = "TITLEPIC";
 if ( gamemode == commercial )
   S_StartMusic(mus_dm2ttl);
 else
   S_StartMusic (mus_intro);
 break;
      case 1:
 G_DeferedPlayDemo ("demo1");
 break;
      case 2:
 pagetic = 200;
 gamestate = GS_DEMOSCREEN;
 pagename = "CREDIT";
 break;
      case 3:
 G_DeferedPlayDemo ("demo2");
 break;
      case 4:
 gamestate = GS_DEMOSCREEN;
 if ( gamemode == commercial)
 {
     pagetic = 35 * 11;
     pagename = "TITLEPIC";
     S_StartMusic(mus_dm2ttl);
 }
 else
 {
     pagetic = 200;

     if ( gamemode == retail )
       pagename = "CREDIT";
     else
       pagename = "HELP2";
 }
 break;
      case 5:
 G_DeferedPlayDemo ("demo3");
 break;

      case 6:
 G_DeferedPlayDemo ("demo4");
 break;
    }
}
