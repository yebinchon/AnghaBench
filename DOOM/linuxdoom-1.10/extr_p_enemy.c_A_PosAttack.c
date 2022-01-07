
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int angle; int target; } ;
typedef TYPE_1__ mobj_t ;


 int A_FaceTarget (TYPE_1__*) ;
 int MISSILERANGE ;
 int P_AimLineAttack (TYPE_1__*,int,int ) ;
 int P_LineAttack (TYPE_1__*,int,int ,int,int) ;
 int P_Random () ;
 int S_StartSound (TYPE_1__*,int ) ;
 int sfx_pistol ;

void A_PosAttack (mobj_t* actor)
{
    int angle;
    int damage;
    int slope;

    if (!actor->target)
 return;

    A_FaceTarget (actor);
    angle = actor->angle;
    slope = P_AimLineAttack (actor, angle, MISSILERANGE);

    S_StartSound (actor, sfx_pistol);
    angle += (P_Random()-P_Random())<<20;
    damage = ((P_Random()%5)+1)*3;
    P_LineAttack (actor, angle, MISSILERANGE, slope, damage);
}
