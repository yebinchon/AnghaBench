
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int target; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int MT_TROOPSHOT ;
 scalar_t__ P_CheckMeleeRange (TYPE_1__*) ;
 int P_DamageMobj (int ,TYPE_1__*,TYPE_1__*,int) ;
 int P_Random () ;
 int P_SpawnMissile (TYPE_1__*,int ,int ) ;
 int S_StartSound (TYPE_1__*,int ) ;
 int sfx_claw ;

void A_TroopAttack (mobj_t* actor)
{
    int damage;

    if (!actor->target)
 return;

    A_FaceTarget (actor);
    if (P_CheckMeleeRange (actor))
    {
 S_StartSound (actor, sfx_claw);
 damage = (P_Random()%8+1)*3;
 P_DamageMobj (actor->target, actor, actor, damage);
 return;
    }



    P_SpawnMissile (actor, actor->target, MT_TROOPSHOT);
}
