
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_6__ {int buttons; } ;
struct TYPE_7__ {scalar_t__ pendingweapon; scalar_t__ refire; scalar_t__ health; TYPE_1__ cmd; } ;
typedef TYPE_2__ player_t ;


 int BT_ATTACK ;
 int P_CheckAmmo (TYPE_2__*) ;
 int P_FireWeapon (TYPE_2__*) ;
 scalar_t__ wp_nochange ;

void A_ReFire
( player_t* player,
  pspdef_t* psp )
{



    if ( (player->cmd.buttons & BT_ATTACK)
  && player->pendingweapon == wp_nochange
  && player->health)
    {
 player->refire++;
 P_FireWeapon (player);
    }
    else
    {
 player->refire = 0;
 P_CheckAmmo (player);
    }
}
