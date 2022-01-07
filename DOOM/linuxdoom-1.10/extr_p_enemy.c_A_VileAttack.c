
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int angle; TYPE_6__* target; void* y; void* x; struct TYPE_14__* tracer; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_15__ {int momz; void* x; void* y; TYPE_1__* info; } ;
struct TYPE_13__ {int mass; } ;


 int ANGLETOFINESHIFT ;
 int A_FaceTarget (TYPE_2__*) ;
 int FRACUNIT ;
 void* FixedMul (int,int ) ;
 int P_CheckSight (TYPE_2__*,TYPE_6__*) ;
 int P_DamageMobj (TYPE_6__*,TYPE_2__*,TYPE_2__*,int) ;
 int P_RadiusAttack (TYPE_2__*,TYPE_2__*,int) ;
 int S_StartSound (TYPE_2__*,int ) ;
 int * finecosine ;
 int * finesine ;
 int sfx_barexp ;

void A_VileAttack (mobj_t* actor)
{
    mobj_t* fire;
    int an;

    if (!actor->target)
 return;

    A_FaceTarget (actor);

    if (!P_CheckSight (actor, actor->target) )
 return;

    S_StartSound (actor, sfx_barexp);
    P_DamageMobj (actor->target, actor, actor, 20);
    actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;

    an = actor->angle >> ANGLETOFINESHIFT;

    fire = actor->tracer;

    if (!fire)
 return;


    fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
    fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);
    P_RadiusAttack (fire, actor, 70 );
}
