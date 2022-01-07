
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_5__ {size_t readyweapon; int mo; } ;
typedef TYPE_1__ player_t ;
struct TYPE_6__ {int flashstate; } ;


 int P_SetMobjState (int ,int ) ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int S_PLAY_ATK2 ;
 int ps_flash ;
 TYPE_2__* weaponinfo ;

void
A_GunFlash
( player_t* player,
  pspdef_t* psp )
{
    P_SetMobjState (player->mo, S_PLAY_ATK2);
    P_SetPsprite (player,ps_flash,weaponinfo[player->readyweapon].flashstate);
}
