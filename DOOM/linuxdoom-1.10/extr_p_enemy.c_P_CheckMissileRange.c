
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ type; TYPE_1__* info; TYPE_4__* target; scalar_t__ y; scalar_t__ x; scalar_t__ reactiontime; } ;
typedef TYPE_2__ mobj_t ;
typedef int fixed_t ;
typedef int boolean ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_6__ {int meleestate; } ;


 int FRACUNIT ;
 int MF_JUSTHIT ;
 scalar_t__ MT_CYBORG ;
 scalar_t__ MT_SKULL ;
 scalar_t__ MT_SPIDER ;
 scalar_t__ MT_UNDEAD ;
 scalar_t__ MT_VILE ;
 int P_AproxDistance (scalar_t__,scalar_t__) ;
 int P_CheckSight (TYPE_2__*,TYPE_4__*) ;
 int P_Random () ;

boolean P_CheckMissileRange (mobj_t* actor)
{
    fixed_t dist;

    if (! P_CheckSight (actor, actor->target) )
 return 0;

    if ( actor->flags & MF_JUSTHIT )
    {


 actor->flags &= ~MF_JUSTHIT;
 return 1;
    }

    if (actor->reactiontime)
 return 0;


    dist = P_AproxDistance ( actor->x-actor->target->x,
        actor->y-actor->target->y) - 64*FRACUNIT;

    if (!actor->info->meleestate)
 dist -= 128*FRACUNIT;

    dist >>= 16;

    if (actor->type == MT_VILE)
    {
 if (dist > 14*64)
     return 0;
    }


    if (actor->type == MT_UNDEAD)
    {
 if (dist < 196)
     return 0;
 dist >>= 1;
    }


    if (actor->type == MT_CYBORG
 || actor->type == MT_SPIDER
 || actor->type == MT_SKULL)
    {
 dist >>= 1;
    }

    if (dist > 200)
 dist = 200;

    if (actor->type == MT_CYBORG && dist > 160)
 dist = 160;

    if (P_Random () < dist)
 return 0;

    return 1;
}
