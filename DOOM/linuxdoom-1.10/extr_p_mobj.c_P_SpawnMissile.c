
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mobjtype_t ;
struct TYPE_10__ {int z; int flags; int angle; int momz; TYPE_1__* info; scalar_t__ y; scalar_t__ x; void* momy; void* momx; struct TYPE_10__* target; } ;
typedef TYPE_2__ mobj_t ;
typedef int angle_t ;
struct TYPE_9__ {int speed; scalar_t__ seesound; } ;


 int ANGLETOFINESHIFT ;
 int FRACUNIT ;
 void* FixedMul (int,int ) ;
 int MF_SHADOW ;
 int P_AproxDistance (scalar_t__,scalar_t__) ;
 int P_CheckMissileSpawn (TYPE_2__*) ;
 int P_Random () ;
 TYPE_2__* P_SpawnMobj (scalar_t__,scalar_t__,int,int ) ;
 int R_PointToAngle2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int S_StartSound (TYPE_2__*,scalar_t__) ;
 int * finecosine ;
 int * finesine ;

mobj_t*
P_SpawnMissile
( mobj_t* source,
  mobj_t* dest,
  mobjtype_t type )
{
    mobj_t* th;
    angle_t an;
    int dist;

    th = P_SpawnMobj (source->x,
        source->y,
        source->z + 4*8*FRACUNIT, type);

    if (th->info->seesound)
 S_StartSound (th, th->info->seesound);

    th->target = source;
    an = R_PointToAngle2 (source->x, source->y, dest->x, dest->y);


    if (dest->flags & MF_SHADOW)
 an += (P_Random()-P_Random())<<20;

    th->angle = an;
    an >>= ANGLETOFINESHIFT;
    th->momx = FixedMul (th->info->speed, finecosine[an]);
    th->momy = FixedMul (th->info->speed, finesine[an]);

    dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
    dist = dist / th->info->speed;

    if (dist < 1)
 dist = 1;

    th->momz = (dest->z - source->z) / dist;
    P_CheckMissileSpawn (th);

    return th;
}
