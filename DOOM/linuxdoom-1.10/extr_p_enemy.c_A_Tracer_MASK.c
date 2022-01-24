#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int z; int momz; int tics; scalar_t__ health; size_t angle; TYPE_1__* info; void* y; void* x; void* momy; void* momx; struct TYPE_6__* tracer; } ;
typedef  TYPE_2__ mobj_t ;
typedef  int fixed_t ;
typedef  size_t angle_t ;
struct TYPE_5__ {int speed; } ;

/* Variables and functions */
 size_t ANGLETOFINESHIFT ; 
 int FRACUNIT ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_SMOKE ; 
 int FUNC1 (void*,void*) ; 
 int FUNC2 () ; 
 TYPE_2__* FUNC3 (void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 size_t FUNC5 (void*,void*,void*,void*) ; 
 int TRACEANGLE ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 
 int gametic ; 

void FUNC6 (mobj_t* actor)
{
    angle_t	exact;
    fixed_t	dist;
    fixed_t	slope;
    mobj_t*	dest;
    mobj_t*	th;
		
    if (gametic & 3)
	return;
    
    // spawn a puff of smoke behind the rocket		
    FUNC4 (actor->x, actor->y, actor->z);
	
    th = FUNC3 (actor->x-actor->momx,
		      actor->y-actor->momy,
		      actor->z, MT_SMOKE);
    
    th->momz = FRACUNIT;
    th->tics -= FUNC2()&3;
    if (th->tics < 1)
	th->tics = 1;
    
    // adjust direction
    dest = actor->tracer;
	
    if (!dest || dest->health <= 0)
	return;
    
    // change angle	
    exact = FUNC5 (actor->x,
			     actor->y,
			     dest->x,
			     dest->y);

    if (exact != actor->angle)
    {
	if (exact - actor->angle > 0x80000000)
	{
	    actor->angle -= TRACEANGLE;
	    if (exact - actor->angle < 0x80000000)
		actor->angle = exact;
	}
	else
	{
	    actor->angle += TRACEANGLE;
	    if (exact - actor->angle > 0x80000000)
		actor->angle = exact;
	}
    }
	
    exact = actor->angle>>ANGLETOFINESHIFT;
    actor->momx = FUNC0 (actor->info->speed, finecosine[exact]);
    actor->momy = FUNC0 (actor->info->speed, finesine[exact]);
    
    // change slope
    dist = FUNC1 (dest->x - actor->x,
			    dest->y - actor->y);
    
    dist = dist / actor->info->speed;

    if (dist < 1)
	dist = 1;
    slope = (dest->z+40*FRACUNIT - actor->z) / dist;

    if (slope < actor->momz)
	actor->momz -= FRACUNIT/8;
    else
	actor->momz += FRACUNIT/8;
}