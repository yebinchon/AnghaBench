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
struct TYPE_8__ {int flags; scalar_t__ type; scalar_t__ radius; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ mobj_t ;
typedef  scalar_t__ fixed_t ;
typedef  int boolean ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 scalar_t__ FRACBITS ; 
 int MF_SHOOTABLE ; 
 scalar_t__ MT_CYBORG ; 
 scalar_t__ MT_SPIDER ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ bombdamage ; 
 int /*<<< orphan*/  bombsource ; 
 TYPE_2__* bombspot ; 

boolean FUNC3 (mobj_t* thing)
{
    fixed_t	dx;
    fixed_t	dy;
    fixed_t	dist;
	
    if (!(thing->flags & MF_SHOOTABLE) )
	return true;

    // Boss spider and cyborg
    // take no damage from concussion.
    if (thing->type == MT_CYBORG
	|| thing->type == MT_SPIDER)
	return true;	
		
    dx = FUNC2(thing->x - bombspot->x);
    dy = FUNC2(thing->y - bombspot->y);
    
    dist = dx>dy ? dx : dy;
    dist = (dist - thing->radius) >> FRACBITS;

    if (dist < 0)
	dist = 0;

    if (dist >= bombdamage)
	return true;	// out of range

    if ( FUNC0 (thing, bombspot) )
    {
	// must be in direct path
	FUNC1 (thing, bombspot, bombsource, bombdamage - dist);
    }
    
    return true;
}