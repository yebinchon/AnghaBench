
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int didsecret; } ;


 int F_StartFinale () ;
 scalar_t__ commercial ;
 size_t consoleplayer ;
 int ga_worlddone ;
 int gameaction ;
 int gamemap ;
 scalar_t__ gamemode ;
 TYPE_1__* players ;
 scalar_t__ secretexit ;

void G_WorldDone (void)
{
    gameaction = ga_worlddone;

    if (secretexit)
 players[consoleplayer].didsecret = 1;

    if ( gamemode == commercial )
    {
 switch (gamemap)
 {
   case 15:
   case 31:
     if (!secretexit)
  break;
   case 6:
   case 11:
   case 20:
   case 30:
     F_StartFinale ();
     break;
 }
    }
}
