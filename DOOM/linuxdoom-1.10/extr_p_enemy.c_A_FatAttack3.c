
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int angle; TYPE_1__* info; void* momy; void* momx; int target; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_7__ {int speed; } ;


 int ANGLETOFINESHIFT ;
 int A_FaceTarget (TYPE_2__*) ;
 int FATSPREAD ;
 void* FixedMul (int ,int ) ;
 int MT_FATSHOT ;
 TYPE_2__* P_SpawnMissile (TYPE_2__*,int ,int ) ;
 int * finecosine ;
 int * finesine ;

void A_FatAttack3 (mobj_t* actor)
{
    mobj_t* mo;
    int an;

    A_FaceTarget (actor);

    mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
    mo->angle -= FATSPREAD/2;
    an = mo->angle >> ANGLETOFINESHIFT;
    mo->momx = FixedMul (mo->info->speed, finecosine[an]);
    mo->momy = FixedMul (mo->info->speed, finesine[an]);

    mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
    mo->angle += FATSPREAD/2;
    an = mo->angle >> ANGLETOFINESHIFT;
    mo->momx = FixedMul (mo->info->speed, finecosine[an]);
    mo->momy = FixedMul (mo->info->speed, finesine[an]);
}
