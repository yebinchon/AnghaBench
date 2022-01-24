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
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ giType; } ;
typedef  TYPE_2__ gitem_t ;
struct TYPE_9__ {int /*<<< orphan*/  generic1; } ;
struct TYPE_11__ {double physicsBounce; int /*<<< orphan*/  spawnflags; TYPE_1__ s; int /*<<< orphan*/  speed; int /*<<< orphan*/  think; scalar_t__ nextthink; TYPE_2__* item; int /*<<< orphan*/  wait; int /*<<< orphan*/  random; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;

/* Variables and functions */
 int FRAMETIME ; 
 int /*<<< orphan*/  FinishSpawningItem ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ IT_PERSISTANT_POWERUP ; 
 scalar_t__ IT_POWERUP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__ level ; 

void FUNC4 (gentity_t *ent, gitem_t *item) {
	FUNC2( "random", "0", &ent->random );
	FUNC2( "wait", "0", &ent->wait );

	FUNC3( item );
	if ( FUNC0(item) )
		return;

	ent->item = item;
	// some movers spawn on the second frame, so delay item
	// spawns until the third frame so they can ride trains
	ent->nextthink = level.time + FRAMETIME * 2;
	ent->think = FinishSpawningItem;

	ent->physicsBounce = 0.50;		// items are bouncy

	if ( item->giType == IT_POWERUP ) {
		FUNC1( "sound/items/poweruprespawn.wav" );
		FUNC2( "noglobalsound", "0", &ent->speed);
	}

#ifdef MISSIONPACK
	if ( item->giType == IT_PERSISTANT_POWERUP ) {
		ent->s.generic1 = ent->spawnflags;
	}
#endif
}