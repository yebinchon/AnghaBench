
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tics; int x; int momx; int y; int momy; int z; int momz; } ;
typedef TYPE_1__ mobj_t ;


 int P_ExplodeMissile (TYPE_1__*) ;
 int P_Random () ;
 int P_TryMove (TYPE_1__*,int,int) ;

void P_CheckMissileSpawn (mobj_t* th)
{
    th->tics -= P_Random()&3;
    if (th->tics < 1)
 th->tics = 1;



    th->x += (th->momx>>1);
    th->y += (th->momy>>1);
    th->z += (th->momz>>1);

    if (!P_TryMove (th, th->x, th->y))
 P_ExplodeMissile (th);
}
