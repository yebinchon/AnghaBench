
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buttons; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int F_CastTicker () ;
 int F_StartCast () ;
 int MAXPLAYERS ;
 int S_StartMusic (int ) ;
 int TEXTSPEED ;
 int TEXTWAIT ;
 scalar_t__ commercial ;
 int finalecount ;
 int finalestage ;
 int finaletext ;
 int ga_worlddone ;
 int gameaction ;
 int gameepisode ;
 int gamemap ;
 scalar_t__ gamemode ;
 int mus_bunny ;
 TYPE_2__* players ;
 int strlen (int ) ;
 int wipegamestate ;

void F_Ticker (void)
{
    int i;


    if ( (gamemode == commercial)
      && ( finalecount > 50) )
    {

      for (i=0 ; i<MAXPLAYERS ; i++)
 if (players[i].cmd.buttons)
   break;

      if (i < MAXPLAYERS)
      {
 if (gamemap == 30)
   F_StartCast ();
 else
   gameaction = ga_worlddone;
      }
    }


    finalecount++;

    if (finalestage == 2)
    {
 F_CastTicker ();
 return;
    }

    if ( gamemode == commercial)
 return;

    if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
    {
 finalecount = 0;
 finalestage = 1;
 wipegamestate = -1;
 if (gameepisode == 3)
     S_StartMusic (mus_bunny);
    }
}
