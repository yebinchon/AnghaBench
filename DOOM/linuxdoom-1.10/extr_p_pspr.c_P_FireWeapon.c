
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int statenum_t ;
struct TYPE_6__ {size_t readyweapon; int mo; } ;
typedef TYPE_1__ player_t ;
struct TYPE_7__ {int atkstate; } ;


 int P_CheckAmmo (TYPE_1__*) ;
 int P_NoiseAlert (int ,int ) ;
 int P_SetMobjState (int ,int ) ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int S_PLAY_ATK1 ;
 int ps_weapon ;
 TYPE_2__* weaponinfo ;

void P_FireWeapon (player_t* player)
{
    statenum_t newstate;

    if (!P_CheckAmmo (player))
 return;

    P_SetMobjState (player->mo, S_PLAY_ATK1);
    newstate = weaponinfo[player->readyweapon].atkstate;
    P_SetPsprite (player, ps_weapon, newstate);
    P_NoiseAlert (player->mo, player->mo);
}
