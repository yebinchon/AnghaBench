#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mobjtype_t ;
struct TYPE_10__ {int z; int flags; int angle; int momz; TYPE_1__* info; scalar_t__ y; scalar_t__ x; void* momy; void* momx; struct TYPE_10__* target; } ;
typedef  TYPE_2__ mobj_t ;
typedef  int angle_t ;
struct TYPE_9__ {int speed; scalar_t__ seesound; } ;

/* Variables and functions */
 int ANGLETOFINESHIFT ; 
 int FRACUNIT ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MF_SHADOW ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 () ; 
 TYPE_2__* FUNC4 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 

mobj_t*
FUNC7
( mobj_t*	source,
  mobj_t*	dest,
  mobjtype_t	type )
{
    mobj_t*	th;
    angle_t	an;
    int		dist;

    th = FUNC4 (source->x,
		      source->y,
		      source->z + 4*8*FRACUNIT, type);
    
    if (th->info->seesound)
	FUNC6 (th, th->info->seesound);

    th->target = source;	// where it came from
    an = FUNC5 (source->x, source->y, dest->x, dest->y);	

    // fuzzy player
    if (dest->flags & MF_SHADOW)
	an += (FUNC3()-FUNC3())<<20;	

    th->angle = an;
    an >>= ANGLETOFINESHIFT;
    th->momx = FUNC0 (th->info->speed, finecosine[an]);
    th->momy = FUNC0 (th->info->speed, finesine[an]);
	
    dist = FUNC1 (dest->x - source->x, dest->y - source->y);
    dist = dist / th->info->speed;

    if (dist < 1)
	dist = 1;

    th->momz = (dest->z - source->z) / dist;
    FUNC2 (th);
	
    return th;
}