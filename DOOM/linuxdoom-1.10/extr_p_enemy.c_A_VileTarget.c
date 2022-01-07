
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* target; struct TYPE_6__* tracer; int z; int x; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int A_Fire (TYPE_1__*) ;
 int MT_FIRE ;
 TYPE_1__* P_SpawnMobj (int ,int ,int ,int ) ;

void A_VileTarget (mobj_t* actor)
{
    mobj_t* fog;

    if (!actor->target)
 return;

    A_FaceTarget (actor);

    fog = P_SpawnMobj (actor->target->x,
         actor->target->x,
         actor->target->z, MT_FIRE);

    actor->tracer = fog;
    fog->target = actor;
    fog->tracer = actor->target;
    A_Fire (fog);
}
