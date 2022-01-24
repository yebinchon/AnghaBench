#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  loopSound; } ;
struct TYPE_11__ {scalar_t__ moverState; struct TYPE_11__* teammaster; scalar_t__ soundPos1; struct TYPE_11__* activator; scalar_t__ wait; scalar_t__ nextthink; int /*<<< orphan*/  think; scalar_t__ soundPos2; int /*<<< orphan*/  soundLoop; TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_GENERAL_SOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ MOVER_1TO2 ; 
 scalar_t__ MOVER_2TO1 ; 
 int /*<<< orphan*/  MOVER_POS1 ; 
 int /*<<< orphan*/  MOVER_POS2 ; 
 int /*<<< orphan*/  ReturnToPos1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5( gentity_t *ent ) {

	// stop the looping sound
	ent->s.loopSound = ent->soundLoop;

	if ( ent->moverState == MOVER_1TO2 ) {
		// reached pos2
		FUNC3( ent, MOVER_POS2, level.time );

		// play sound
		if ( ent->soundPos2 ) {
			FUNC0( ent, EV_GENERAL_SOUND, ent->soundPos2 );
		}

		// return to pos1 after a delay
		ent->think = ReturnToPos1;
		ent->nextthink = level.time + ent->wait;

		// fire targets
		if ( !ent->activator ) {
			ent->activator = ent;
		}
		FUNC2( ent, ent->activator );
	} else if ( ent->moverState == MOVER_2TO1 ) {
		// reached pos1
		FUNC3( ent, MOVER_POS1, level.time );

		// play sound
		if ( ent->soundPos1 ) {
			FUNC0( ent, EV_GENERAL_SOUND, ent->soundPos1 );
		}

		// close areaportals
		if ( ent->teammaster == ent || !ent->teammaster ) {
			FUNC4( ent, qfalse );
		}
	} else {
		FUNC1( "Reached_BinaryMover: bad moverState" );
	}
}