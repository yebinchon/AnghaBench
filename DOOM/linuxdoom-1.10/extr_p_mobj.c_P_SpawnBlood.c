
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int momz; int tics; } ;
typedef TYPE_1__ mobj_t ;
typedef int fixed_t ;


 int FRACUNIT ;
 int MT_BLOOD ;
 int P_Random () ;
 int P_SetMobjState (TYPE_1__*,int ) ;
 TYPE_1__* P_SpawnMobj (int,int,int,int ) ;
 int S_BLOOD2 ;
 int S_BLOOD3 ;

void
P_SpawnBlood
( fixed_t x,
  fixed_t y,
  fixed_t z,
  int damage )
{
    mobj_t* th;

    z += ((P_Random()-P_Random())<<10);
    th = P_SpawnMobj (x,y,z, MT_BLOOD);
    th->momz = FRACUNIT*2;
    th->tics -= P_Random()&3;

    if (th->tics < 1)
 th->tics = 1;

    if (damage <= 12 && damage >= 9)
 P_SetMobjState (th,S_BLOOD2);
    else if (damage < 9)
 P_SetMobjState (th,S_BLOOD3);
}
