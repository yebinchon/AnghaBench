
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* target; TYPE_1__* info; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ mobj_t ;
typedef int fixed_t ;
typedef int boolean ;
struct TYPE_6__ {int radius; } ;


 int FRACUNIT ;
 int MELEERANGE ;
 int P_AproxDistance (scalar_t__,scalar_t__) ;
 int P_CheckSight (TYPE_2__*,TYPE_2__*) ;

boolean P_CheckMeleeRange (mobj_t* actor)
{
    mobj_t* pl;
    fixed_t dist;

    if (!actor->target)
 return 0;

    pl = actor->target;
    dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);

    if (dist >= MELEERANGE-20*FRACUNIT+pl->info->radius)
 return 0;

    if (! P_CheckSight (actor, actor->target) )
 return 0;

    return 1;
}
