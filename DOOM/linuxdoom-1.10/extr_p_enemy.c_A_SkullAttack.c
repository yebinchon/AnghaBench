
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t angle; int momz; int z; int height; scalar_t__ y; scalar_t__ x; void* momy; void* momx; TYPE_1__* info; int flags; struct TYPE_7__* target; } ;
typedef TYPE_2__ mobj_t ;
typedef size_t angle_t ;
struct TYPE_6__ {int attacksound; } ;


 size_t ANGLETOFINESHIFT ;
 int A_FaceTarget (TYPE_2__*) ;
 void* FixedMul (int,int ) ;
 int MF_SKULLFLY ;
 int P_AproxDistance (scalar_t__,scalar_t__) ;
 int SKULLSPEED ;
 int S_StartSound (TYPE_2__*,int ) ;
 int * finecosine ;
 int * finesine ;

void A_SkullAttack (mobj_t* actor)
{
    mobj_t* dest;
    angle_t an;
    int dist;

    if (!actor->target)
 return;

    dest = actor->target;
    actor->flags |= MF_SKULLFLY;

    S_StartSound (actor, actor->info->attacksound);
    A_FaceTarget (actor);
    an = actor->angle >> ANGLETOFINESHIFT;
    actor->momx = FixedMul (SKULLSPEED, finecosine[an]);
    actor->momy = FixedMul (SKULLSPEED, finesine[an]);
    dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
    dist = dist / SKULLSPEED;

    if (dist < 1)
 dist = 1;
    actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
}
