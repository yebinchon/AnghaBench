
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_5__ {size_t readyweapon; int mo; int * ammo; } ;
typedef TYPE_1__ player_t ;
struct TYPE_6__ {size_t ammo; scalar_t__ flashstate; } ;


 int MT_PLASMA ;
 int P_Random () ;
 int P_SetPsprite (TYPE_1__*,int ,scalar_t__) ;
 int P_SpawnPlayerMissile (int ,int ) ;
 int ps_flash ;
 TYPE_2__* weaponinfo ;

void
A_FirePlasma
( player_t* player,
  pspdef_t* psp )
{
    player->ammo[weaponinfo[player->readyweapon].ammo]--;

    P_SetPsprite (player,
    ps_flash,
    weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );

    P_SpawnPlayerMissile (player->mo, MT_PLASMA);
}
