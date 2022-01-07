
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_4__ {size_t readyweapon; int mo; int * ammo; } ;
typedef TYPE_1__ player_t ;
struct TYPE_5__ {size_t ammo; } ;


 scalar_t__ BFGCELLS ;
 int MT_BFG ;
 int P_SpawnPlayerMissile (int ,int ) ;
 TYPE_2__* weaponinfo ;

void
A_FireBFG
( player_t* player,
  pspdef_t* psp )
{
    player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
    P_SpawnPlayerMissile (player->mo, MT_BFG);
}
