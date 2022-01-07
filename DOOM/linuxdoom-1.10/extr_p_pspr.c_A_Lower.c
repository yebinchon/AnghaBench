
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sy; } ;
typedef TYPE_1__ pspdef_t ;
struct TYPE_8__ {scalar_t__ playerstate; int pendingweapon; int readyweapon; int health; } ;
typedef TYPE_2__ player_t ;


 scalar_t__ LOWERSPEED ;
 scalar_t__ PST_DEAD ;
 int P_BringUpWeapon (TYPE_2__*) ;
 int P_SetPsprite (TYPE_2__*,int ,int ) ;
 int S_NULL ;
 scalar_t__ WEAPONBOTTOM ;
 int ps_weapon ;

void
A_Lower
( player_t* player,
  pspdef_t* psp )
{
    psp->sy += LOWERSPEED;


    if (psp->sy < WEAPONBOTTOM )
 return;


    if (player->playerstate == PST_DEAD)
    {
 psp->sy = WEAPONBOTTOM;


 return;
    }



    if (!player->health)
    {

 P_SetPsprite (player, ps_weapon, S_NULL);
 return;
    }

    player->readyweapon = player->pendingweapon;

    P_BringUpWeapon (player);
}
