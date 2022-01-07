
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
 int sfx_shotgn ;

void A_SPosAttack (mobj_t* actor)
{
    int i;
    int angle;
    int bangle;
    int damage;
    int slope;

    if (!actor->target)
 return;

    S_StartSound (actor, sfx_shotgn);
    A_FaceTarget (actor);
    bangle = actor->angle;
    slope = P_AimLineAttack (actor, bangle, MISSILERANGE);

    for (i=0 ; i<3 ; i++)
    {
 angle = bangle + ((P_Random()-P_Random())<<20);
 damage = ((P_Random()%5)+1)*3;
 P_LineAttack (actor, angle, MISSILERANGE, slope, damage);
    }
}
