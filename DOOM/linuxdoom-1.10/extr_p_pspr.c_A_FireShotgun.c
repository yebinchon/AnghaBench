
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_5__ {size_t readyweapon; int mo; int * ammo; } ;
typedef TYPE_1__ player_t ;
struct TYPE_6__ {size_t ammo; int flashstate; } ;


 int P_BulletSlope (int ) ;
 int P_GunShot (int ,int) ;
 int P_SetMobjState (int ,int ) ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int S_PLAY_ATK2 ;
 int S_StartSound (int ,int ) ;
 int ps_flash ;
 int sfx_shotgn ;
 TYPE_2__* weaponinfo ;

void
A_FireShotgun
( player_t* player,
  pspdef_t* psp )
{
    int i;

    S_StartSound (player->mo, sfx_shotgn);
    P_SetMobjState (player->mo, S_PLAY_ATK2);

    player->ammo[weaponinfo[player->readyweapon].ammo]--;

    P_SetPsprite (player,
    ps_flash,
    weaponinfo[player->readyweapon].flashstate);

    P_BulletSlope (player->mo);

    for (i=0 ; i<7 ; i++)
 P_GunShot (player->mo, 0);
}
