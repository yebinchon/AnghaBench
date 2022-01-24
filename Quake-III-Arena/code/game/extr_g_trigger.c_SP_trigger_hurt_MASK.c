#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  contents; } ;
struct TYPE_7__ {int damage; int spawnflags; int /*<<< orphan*/  use; TYPE_1__ r; int /*<<< orphan*/  touch; int /*<<< orphan*/  noise_index; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  hurt_touch ; 
 int /*<<< orphan*/  hurt_use ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3( gentity_t *self ) {
	FUNC1 (self);

	self->noise_index = FUNC0( "sound/world/electro.wav" );
	self->touch = hurt_touch;

	if ( !self->damage ) {
		self->damage = 5;
	}

	self->r.contents = CONTENTS_TRIGGER;

	if ( self->spawnflags & 2 ) {
		self->use = hurt_use;
	}

	// link in to the world if starting active
	if ( ! (self->spawnflags & 1) ) {
		FUNC2 (self);
	}
}