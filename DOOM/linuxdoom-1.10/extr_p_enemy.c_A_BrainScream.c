
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int momz; int tics; } ;
typedef TYPE_1__ mobj_t ;


 int FRACUNIT ;
 int MT_ROCKET ;
 int P_Random () ;
 int P_SetMobjState (TYPE_1__*,int ) ;
 TYPE_1__* P_SpawnMobj (int,int,int,int ) ;
 int S_BRAINEXPLODE1 ;
 int S_StartSound (int *,int ) ;
 int sfx_bosdth ;

void A_BrainScream (mobj_t* mo)
{
    int x;
    int y;
    int z;
    mobj_t* th;

    for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
    {
 y = mo->y - 320*FRACUNIT;
 z = 128 + P_Random()*2*FRACUNIT;
 th = P_SpawnMobj (x,y,z, MT_ROCKET);
 th->momz = P_Random()*512;

 P_SetMobjState (th, S_BRAINEXPLODE1);

 th->tics -= P_Random()&7;
 if (th->tics < 1)
     th->tics = 1;
    }

    S_StartSound (((void*)0),sfx_bosdth);
}
