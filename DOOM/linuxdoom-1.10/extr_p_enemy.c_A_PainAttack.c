
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int angle; int target; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int A_PainShootSkull (TYPE_1__*,int ) ;

void A_PainAttack (mobj_t* actor)
{
    if (!actor->target)
 return;

    A_FaceTarget (actor);
    A_PainShootSkull (actor, actor->angle);
}
