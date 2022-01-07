
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_5__ {int* ammo; } ;
typedef TYPE_1__ player_t ;


 int P_CheckAmmo (TYPE_1__*) ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 int S_DSNR1 ;
 size_t am_shell ;
 int ps_weapon ;

void
A_CheckReload
( player_t* player,
  pspdef_t* psp )
{
    P_CheckAmmo (player);




}
