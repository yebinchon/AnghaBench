
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int statenum_t ;
struct TYPE_7__ {size_t pendingweapon; size_t readyweapon; TYPE_1__* psprites; int mo; } ;
typedef TYPE_2__ player_t ;
struct TYPE_8__ {int upstate; } ;
struct TYPE_6__ {int sy; } ;


 int P_SetPsprite (TYPE_2__*,size_t,int ) ;
 int S_StartSound (int ,int ) ;
 int WEAPONBOTTOM ;
 size_t ps_weapon ;
 int sfx_sawup ;
 TYPE_3__* weaponinfo ;
 size_t wp_chainsaw ;
 size_t wp_nochange ;

void P_BringUpWeapon (player_t* player)
{
    statenum_t newstate;

    if (player->pendingweapon == wp_nochange)
 player->pendingweapon = player->readyweapon;

    if (player->pendingweapon == wp_chainsaw)
 S_StartSound (player->mo, sfx_sawup);

    newstate = weaponinfo[player->pendingweapon].upstate;

    player->pendingweapon = wp_nochange;
    player->psprites[ps_weapon].sy = WEAPONBOTTOM;

    P_SetPsprite (player, ps_weapon, newstate);
}
