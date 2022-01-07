
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* info; TYPE_5__* target; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_10__ {scalar_t__ health; } ;
struct TYPE_8__ {int seestate; } ;


 int A_FaceTarget (TYPE_2__*) ;
 int P_CheckSight (TYPE_2__*,TYPE_5__*) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_2__*,int ) ;

void A_CPosRefire (mobj_t* actor)
{

    A_FaceTarget (actor);

    if (P_Random () < 40)
 return;

    if (!actor->target
 || actor->target->health <= 0
 || !P_CheckSight (actor, actor->target) )
    {
 P_SetMobjState (actor, actor->info->seestate);
    }
}
