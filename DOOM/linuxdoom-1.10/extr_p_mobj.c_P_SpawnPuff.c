
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tics; int momz; } ;
typedef TYPE_1__ mobj_t ;
typedef int fixed_t ;


 int FRACUNIT ;
 scalar_t__ MELEERANGE ;
 int MT_PUFF ;
 int P_Random () ;
 int P_SetMobjState (TYPE_1__*,int ) ;
 TYPE_1__* P_SpawnMobj (int,int,int,int ) ;
 int S_PUFF3 ;
 scalar_t__ attackrange ;

void
P_SpawnPuff
( fixed_t x,
  fixed_t y,
  fixed_t z )
{
    mobj_t* th;

    z += ((P_Random()-P_Random())<<10);

    th = P_SpawnMobj (x,y,z, MT_PUFF);
    th->momz = FRACUNIT;
    th->tics -= P_Random()&3;

    if (th->tics < 1)
 th->tics = 1;


    if (attackrange == MELEERANGE)
 P_SetMobjState (th, S_PUFF3);
}
