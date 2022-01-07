
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int target; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 scalar_t__ P_CheckMeleeRange (TYPE_1__*) ;
 int P_DamageMobj (int ,TYPE_1__*,TYPE_1__*,int) ;
 int P_Random () ;

void A_SargAttack (mobj_t* actor)
{
    int damage;

    if (!actor->target)
 return;

    A_FaceTarget (actor);
    if (P_CheckMeleeRange (actor))
    {
 damage = ((P_Random()%10)+1)*4;
 P_DamageMobj (actor->target, actor, actor, damage);
    }
}
