
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ floorheight; int special; } ;
typedef TYPE_2__ sector_t ;
struct TYPE_8__ {int health; TYPE_5__* mo; int cheats; int secretcount; int * powers; } ;
typedef TYPE_3__ player_t ;
struct TYPE_9__ {scalar_t__ z; TYPE_1__* subsector; } ;
struct TYPE_6__ {TYPE_2__* sector; } ;


 int CF_GODMODE ;
 int G_ExitLevel () ;
 int I_Error (char*,int) ;
 int P_DamageMobj (TYPE_5__*,int *,int *,int) ;
 int P_Random () ;
 int leveltime ;
 size_t pw_ironfeet ;

void P_PlayerInSpecialSector (player_t* player)
{
    sector_t* sector;

    sector = player->mo->subsector->sector;


    if (player->mo->z != sector->floorheight)
 return;


    switch (sector->special)
    {
      case 5:

 if (!player->powers[pw_ironfeet])
     if (!(leveltime&0x1f))
  P_DamageMobj (player->mo, ((void*)0), ((void*)0), 10);
 break;

      case 7:

 if (!player->powers[pw_ironfeet])
     if (!(leveltime&0x1f))
  P_DamageMobj (player->mo, ((void*)0), ((void*)0), 5);
 break;

      case 16:

      case 4:

 if (!player->powers[pw_ironfeet]
     || (P_Random()<5) )
 {
     if (!(leveltime&0x1f))
  P_DamageMobj (player->mo, ((void*)0), ((void*)0), 20);
 }
 break;

      case 9:

 player->secretcount++;
 sector->special = 0;
 break;

      case 11:

 player->cheats &= ~CF_GODMODE;

 if (!(leveltime&0x1f))
     P_DamageMobj (player->mo, ((void*)0), ((void*)0), 20);

 if (player->health <= 10)
     G_ExitLevel();
 break;

      default:
 I_Error ("P_PlayerInSpecialSector: "
   "unknown special %i",
   sector->special);
 break;
    };
}
