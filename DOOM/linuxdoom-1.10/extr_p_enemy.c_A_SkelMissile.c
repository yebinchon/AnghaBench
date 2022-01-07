
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z; scalar_t__ target; scalar_t__ tracer; scalar_t__ momy; int y; scalar_t__ momx; int x; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int FRACUNIT ;
 int MT_TRACER ;
 TYPE_1__* P_SpawnMissile (TYPE_1__*,scalar_t__,int ) ;

void A_SkelMissile (mobj_t* actor)
{
    mobj_t* mo;

    if (!actor->target)
 return;

    A_FaceTarget (actor);
    actor->z += 16*FRACUNIT;
    mo = P_SpawnMissile (actor, actor->target, MT_TRACER);
    actor->z -= 16*FRACUNIT;

    mo->x += mo->momx;
    mo->y += mo->momy;
    mo->tracer = actor->target;
}
