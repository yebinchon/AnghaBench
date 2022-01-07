
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int target; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int MT_HEADSHOT ;
 scalar_t__ P_CheckMeleeRange (TYPE_1__*) ;
 int P_DamageMobj (int ,TYPE_1__*,TYPE_1__*,int) ;
 int P_Random () ;
 int P_SpawnMissile (TYPE_1__*,int ,int ) ;

void A_HeadAttack (mobj_t* actor)
{
    int damage;

    if (!actor->target)
 return;

    A_FaceTarget (actor);
    if (P_CheckMeleeRange (actor))
    {
 damage = (P_Random()%6+1)*10;
 P_DamageMobj (actor->target, actor, actor, damage);
 return;
    }


    P_SpawnMissile (actor, actor->target, MT_HEADSHOT);
}
