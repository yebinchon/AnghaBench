
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_9__ {int* ammo; size_t readyweapon; TYPE_3__* mo; } ;
typedef TYPE_1__ player_t ;
typedef int angle_t ;
struct TYPE_11__ {int angle; } ;
struct TYPE_10__ {size_t ammo; int flashstate; } ;


 int MISSILERANGE ;
 int P_BulletSlope (TYPE_3__*) ;
 int P_LineAttack (TYPE_3__*,int,int ,scalar_t__,int) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_3__*,int ) ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int S_PLAY_ATK2 ;
 int S_StartSound (TYPE_3__*,int ) ;
 scalar_t__ bulletslope ;
 int ps_flash ;
 int sfx_dshtgn ;
 TYPE_2__* weaponinfo ;

void
A_FireShotgun2
( player_t* player,
  pspdef_t* psp )
{
    int i;
    angle_t angle;
    int damage;


    S_StartSound (player->mo, sfx_dshtgn);
    P_SetMobjState (player->mo, S_PLAY_ATK2);

    player->ammo[weaponinfo[player->readyweapon].ammo]-=2;

    P_SetPsprite (player,
    ps_flash,
    weaponinfo[player->readyweapon].flashstate);

    P_BulletSlope (player->mo);

    for (i=0 ; i<20 ; i++)
    {
 damage = 5*(P_Random ()%3+1);
 angle = player->mo->angle;
 angle += (P_Random()-P_Random())<<19;
 P_LineAttack (player->mo,
        angle,
        MISSILERANGE,
        bulletslope + ((P_Random()-P_Random())<<5), damage);
    }
}
