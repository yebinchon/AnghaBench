#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ health; int flags; int height; int momx; int momy; scalar_t__ z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ radius; } ;
typedef  TYPE_1__ mobj_t ;
typedef  int boolean ;

/* Variables and functions */
 int MF_DROPPED ; 
 int MF_SHOOTABLE ; 
 int MF_SOLID ; 
 int /*<<< orphan*/  MT_BLOOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  S_GIBS ; 
 scalar_t__ crushchange ; 
 int leveltime ; 
 int nofit ; 

boolean FUNC6 (mobj_t*	thing)
{
    mobj_t*	mo;
	
    if (FUNC5 (thing))
    {
	// keep checking
	return true;
    }
    

    // crunch bodies to giblets
    if (thing->health <= 0)
    {
	FUNC3 (thing, S_GIBS);

	thing->flags &= ~MF_SOLID;
	thing->height = 0;
	thing->radius = 0;

	// keep checking
	return true;		
    }

    // crunch dropped items
    if (thing->flags & MF_DROPPED)
    {
	FUNC2 (thing);
	
	// keep checking
	return true;		
    }

    if (! (thing->flags & MF_SHOOTABLE) )
    {
	// assume it is bloody gibs or something
	return true;			
    }
    
    nofit = true;

    if (crushchange && !(leveltime&3) )
    {
	FUNC0(thing,NULL,NULL,10);

	// spray blood in a random direction
	mo = FUNC4 (thing->x,
			  thing->y,
			  thing->z + thing->height/2, MT_BLOOD);
	
	mo->momx = (FUNC1() - FUNC1 ())<<12;
	mo->momy = (FUNC1() - FUNC1 ())<<12;
    }

    // keep checking (crush other things)	
    return true;	
}