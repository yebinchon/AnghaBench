#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int speed; int /*<<< orphan*/  spawnhealth; int /*<<< orphan*/  flags; int /*<<< orphan*/  raisestate; } ;
typedef  TYPE_1__ mobjinfo_t ;
struct TYPE_11__ {size_t movedir; int x; int y; int height; struct TYPE_11__* target; int /*<<< orphan*/  health; int /*<<< orphan*/  flags; TYPE_1__* info; } ;
typedef  TYPE_2__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t DI_NODIR ; 
 int MAPBLOCKSHIFT ; 
 int MAXRADIUS ; 
 int /*<<< orphan*/  PIT_VileCheck ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_VILE_HEAL1 ; 
 int bmaporgx ; 
 int bmaporgy ; 
 TYPE_2__* corpsehit ; 
 int /*<<< orphan*/  sfx_slop ; 
 TYPE_2__* vileobj ; 
 int viletryx ; 
 int viletryy ; 
 int* xspeed ; 
 int* yspeed ; 

void FUNC5 (mobj_t* actor)
{
    int			xl;
    int			xh;
    int			yl;
    int			yh;
    
    int			bx;
    int			by;

    mobjinfo_t*		info;
    mobj_t*		temp;
	
    if (actor->movedir != DI_NODIR)
    {
	// check for corpses to raise
	viletryx =
	    actor->x + actor->info->speed*xspeed[actor->movedir];
	viletryy =
	    actor->y + actor->info->speed*yspeed[actor->movedir];

	xl = (viletryx - bmaporgx - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	xh = (viletryx - bmaporgx + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	yl = (viletryy - bmaporgy - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	yh = (viletryy - bmaporgy + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	
	vileobj = actor;
	for (bx=xl ; bx<=xh ; bx++)
	{
	    for (by=yl ; by<=yh ; by++)
	    {
		// Call PIT_VileCheck to check
		// whether object is a corpse
		// that canbe raised.
		if (!FUNC2(bx,by,PIT_VileCheck))
		{
		    // got one!
		    temp = actor->target;
		    actor->target = corpsehit;
		    FUNC1 (actor);
		    actor->target = temp;
					
		    FUNC3 (actor, S_VILE_HEAL1);
		    FUNC4 (corpsehit, sfx_slop);
		    info = corpsehit->info;
		    
		    FUNC3 (corpsehit,info->raisestate);
		    corpsehit->height <<= 2;
		    corpsehit->flags = info->flags;
		    corpsehit->health = info->spawnhealth;
		    corpsehit->target = NULL;

		    return;
		}
	    }
	}
    }

    // Return to normal attack.
    FUNC0 (actor);
}