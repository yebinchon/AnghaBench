
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t readyweapon; } ;
typedef TYPE_1__ player_t ;
struct TYPE_6__ {int downstate; } ;


 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int ps_weapon ;
 TYPE_2__* weaponinfo ;

void P_DropWeapon (player_t* player)
{
    P_SetPsprite (player,
    ps_weapon,
    weaponinfo[player->readyweapon].downstate);
}
