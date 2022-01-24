#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_8__ {scalar_t__* absmin; scalar_t__* absmax; scalar_t__* mins; scalar_t__* maxs; int /*<<< orphan*/  contents; } ;
struct TYPE_9__ {char* classname; int count; int /*<<< orphan*/  moverState; int /*<<< orphan*/  touch; TYPE_1__ r; struct TYPE_9__* parent; struct TYPE_9__* teamchain; int /*<<< orphan*/  takedamage; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_10__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Touch_DoorTrigger ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 TYPE_4__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5( gentity_t *ent ) {
	gentity_t		*other;
	vec3_t		mins, maxs;
	int			i, best;

	// set all of the slaves as shootable
	for ( other = ent ; other ; other = other->teamchain ) {
		other->takedamage = qtrue;
	}

	// find the bounds of everything on the team
	FUNC3 (ent->r.absmin, mins);
	FUNC3 (ent->r.absmax, maxs);

	for (other = ent->teamchain ; other ; other=other->teamchain) {
		FUNC0 (other->r.absmin, mins, maxs);
		FUNC0 (other->r.absmax, mins, maxs);
	}

	// find the thinnest axis, which will be the one we expand
	best = 0;
	for ( i = 1 ; i < 3 ; i++ ) {
		if ( maxs[i] - mins[i] < maxs[best] - mins[best] ) {
			best = i;
		}
	}
	maxs[best] += 120;
	mins[best] -= 120;

	// create a trigger with this size
	other = FUNC1 ();
	other->classname = "door_trigger";
	FUNC3 (mins, other->r.mins);
	FUNC3 (maxs, other->r.maxs);
	other->parent = ent;
	other->r.contents = CONTENTS_TRIGGER;
	other->touch = Touch_DoorTrigger;
	// remember the thinnest axis
	other->count = best;
	FUNC4 (other);

	FUNC2( ent, ent->moverState, level.time );
}