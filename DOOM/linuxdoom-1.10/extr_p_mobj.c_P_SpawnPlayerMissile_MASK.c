#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mobjtype_t ;
struct TYPE_9__ {int angle; TYPE_1__* info; void* momz; void* momy; void* momx; struct TYPE_9__* target; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ mobj_t ;
typedef  scalar_t__ fixed_t ;
typedef  int angle_t ;
struct TYPE_8__ {int /*<<< orphan*/  speed; scalar_t__ seesound; } ;

/* Variables and functions */
 int ANGLETOFINESHIFT ; 
 int FRACUNIT ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__* finecosine ; 
 scalar_t__* finesine ; 
 int /*<<< orphan*/  linetarget ; 

void
FUNC5
( mobj_t*	source,
  mobjtype_t	type )
{
    mobj_t*	th;
    angle_t	an;
    
    fixed_t	x;
    fixed_t	y;
    fixed_t	z;
    fixed_t	slope;
    
    // see which target is to be aimed at
    an = source->angle;
    slope = FUNC1 (source, an, 16*64*FRACUNIT);
    
    if (!linetarget)
    {
	an += 1<<26;
	slope = FUNC1 (source, an, 16*64*FRACUNIT);

	if (!linetarget)
	{
	    an -= 2<<26;
	    slope = FUNC1 (source, an, 16*64*FRACUNIT);
	}

	if (!linetarget)
	{
	    an = source->angle;
	    slope = 0;
	}
    }
		
    x = source->x;
    y = source->y;
    z = source->z + 4*8*FRACUNIT;
	
    th = FUNC3 (x,y,z, type);

    if (th->info->seesound)
	FUNC4 (th, th->info->seesound);

    th->target = source;
    th->angle = an;
    th->momx = FUNC0( th->info->speed,
			 finecosine[an>>ANGLETOFINESHIFT]);
    th->momy = FUNC0( th->info->speed,
			 finesine[an>>ANGLETOFINESHIFT]);
    th->momz = FUNC0( th->info->speed, slope);

    FUNC2 (th);
}