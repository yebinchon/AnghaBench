#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  svFlags; int /*<<< orphan*/  contents; } ;
struct TYPE_11__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_12__ {void* eventParm; TYPE_2__ pos; int /*<<< orphan*/  eFlags; } ;
struct TYPE_14__ {scalar_t__ nextthink; TYPE_4__ r; TYPE_3__ s; scalar_t__ speed; TYPE_1__* item; struct TYPE_14__* teamchain; struct TYPE_14__* teammaster; scalar_t__ team; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_10__ {scalar_t__ giType; scalar_t__ giTag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 int /*<<< orphan*/  EF_NODRAW ; 
 int /*<<< orphan*/  EV_GENERAL_SOUND ; 
 int /*<<< orphan*/  EV_GLOBAL_SOUND ; 
 int /*<<< orphan*/  EV_ITEM_RESPAWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HI_KAMIKAZE ; 
 scalar_t__ IT_HOLDABLE ; 
 scalar_t__ IT_POWERUP ; 
 int /*<<< orphan*/  SVF_BROADCAST ; 
 int /*<<< orphan*/  SVF_NOCLIENT ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

void FUNC6( gentity_t *ent ) {
	// randomly select from teamed entities
	if (ent->team) {
		gentity_t	*master;
		int	count;
		int choice;

		if ( !ent->teammaster ) {
			FUNC1( "RespawnItem: bad teammaster");
		}
		master = ent->teammaster;

		for (count = 0, ent = master; ent; ent = ent->teamchain, count++)
			;

		choice = FUNC4() % count;

		for (count = 0, ent = master; count < choice; ent = ent->teamchain, count++)
			;
	}

	ent->r.contents = CONTENTS_TRIGGER;
	ent->s.eFlags &= ~EF_NODRAW;
	ent->r.svFlags &= ~SVF_NOCLIENT;
	FUNC5 (ent);

	if ( ent->item->giType == IT_POWERUP ) {
		// play powerup spawn sound to all clients
		gentity_t	*te;

		// if the powerup respawn sound should Not be global
		if (ent->speed) {
			te = FUNC3( ent->s.pos.trBase, EV_GENERAL_SOUND );
		}
		else {
			te = FUNC3( ent->s.pos.trBase, EV_GLOBAL_SOUND );
		}
		te->s.eventParm = FUNC2( "sound/items/poweruprespawn.wav" );
		te->r.svFlags |= SVF_BROADCAST;
	}

	if ( ent->item->giType == IT_HOLDABLE && ent->item->giTag == HI_KAMIKAZE ) {
		// play powerup spawn sound to all clients
		gentity_t	*te;

		// if the powerup respawn sound should Not be global
		if (ent->speed) {
			te = FUNC3( ent->s.pos.trBase, EV_GENERAL_SOUND );
		}
		else {
			te = FUNC3( ent->s.pos.trBase, EV_GLOBAL_SOUND );
		}
		te->s.eventParm = FUNC2( "sound/items/kamikazerespawn.wav" );
		te->r.svFlags |= SVF_BROADCAST;
	}

	// play the normal respawn sound only to nearby clients
	FUNC0( ent, EV_ITEM_RESPAWN, 0 );

	ent->nextthink = 0;
}