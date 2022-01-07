
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int statenum_t ;
struct TYPE_7__ {scalar_t__ sy; } ;
typedef TYPE_1__ pspdef_t ;
struct TYPE_8__ {size_t readyweapon; } ;
typedef TYPE_2__ player_t ;
struct TYPE_9__ {int readystate; } ;


 int P_SetPsprite (TYPE_2__*,int ,int ) ;
 scalar_t__ RAISESPEED ;
 scalar_t__ WEAPONTOP ;
 int ps_weapon ;
 TYPE_3__* weaponinfo ;

void
A_Raise
( player_t* player,
  pspdef_t* psp )
{
    statenum_t newstate;

    psp->sy -= RAISESPEED;

    if (psp->sy > WEAPONTOP )
 return;

    psp->sy = WEAPONTOP;



    newstate = weaponinfo[player->readyweapon].readystate;

    P_SetPsprite (player, ps_weapon, newstate);
}
