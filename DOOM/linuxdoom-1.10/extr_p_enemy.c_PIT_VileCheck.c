
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int tics; int height; scalar_t__ y; scalar_t__ x; scalar_t__ momy; scalar_t__ momx; TYPE_1__* info; } ;
typedef TYPE_2__ mobj_t ;
typedef int boolean ;
struct TYPE_9__ {int radius; } ;
struct TYPE_7__ {scalar_t__ raisestate; int radius; } ;


 int MF_CORPSE ;
 size_t MT_VILE ;
 int P_CheckPosition (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ S_NULL ;
 int abs (scalar_t__) ;
 TYPE_2__* corpsehit ;
 TYPE_3__* mobjinfo ;
 scalar_t__ viletryx ;
 scalar_t__ viletryy ;

boolean PIT_VileCheck (mobj_t* thing)
{
    int maxdist;
    boolean check;

    if (!(thing->flags & MF_CORPSE) )
 return 1;

    if (thing->tics != -1)
 return 1;

    if (thing->info->raisestate == S_NULL)
 return 1;

    maxdist = thing->info->radius + mobjinfo[MT_VILE].radius;

    if ( abs(thing->x - viletryx) > maxdist
  || abs(thing->y - viletryy) > maxdist )
 return 1;

    corpsehit = thing;
    corpsehit->momx = corpsehit->momy = 0;
    corpsehit->height <<= 2;
    check = P_CheckPosition (corpsehit, corpsehit->x, corpsehit->y);
    corpsehit->height >>= 2;

    if (!check)
 return 1;

    return 0;
}
