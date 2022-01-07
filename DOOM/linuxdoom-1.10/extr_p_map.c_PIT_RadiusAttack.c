
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; scalar_t__ type; scalar_t__ radius; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ mobj_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;


 scalar_t__ FRACBITS ;
 int MF_SHOOTABLE ;
 scalar_t__ MT_CYBORG ;
 scalar_t__ MT_SPIDER ;
 scalar_t__ P_CheckSight (TYPE_1__*,TYPE_2__*) ;
 int P_DamageMobj (TYPE_1__*,TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ bombdamage ;
 int bombsource ;
 TYPE_2__* bombspot ;

boolean PIT_RadiusAttack (mobj_t* thing)
{
    fixed_t dx;
    fixed_t dy;
    fixed_t dist;

    if (!(thing->flags & MF_SHOOTABLE) )
 return 1;



    if (thing->type == MT_CYBORG
 || thing->type == MT_SPIDER)
 return 1;

    dx = abs(thing->x - bombspot->x);
    dy = abs(thing->y - bombspot->y);

    dist = dx>dy ? dx : dy;
    dist = (dist - thing->radius) >> FRACBITS;

    if (dist < 0)
 dist = 0;

    if (dist >= bombdamage)
 return 1;

    if ( P_CheckSight (thing, bombspot) )
    {

 P_DamageMobj (thing, bombspot, bombsource, bombdamage - dist);
    }

    return 1;
}
