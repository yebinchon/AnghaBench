#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  absmax; int /*<<< orphan*/  absmin; } ;
struct TYPE_6__ {int /*<<< orphan*/  origin; int /*<<< orphan*/  origin2; int /*<<< orphan*/  angles; } ;
struct TYPE_8__ {int speed; int spawnflags; int /*<<< orphan*/  use; scalar_t__ nextthink; int /*<<< orphan*/  think; TYPE_2__ r; TYPE_1__ s; scalar_t__ target; void* noise_index; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_9__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  AimAtTarget ; 
 scalar_t__ FRAMETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  Use_target_push ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_4__ level ; 

void FUNC4( gentity_t *self ) {
	if (!self->speed) {
		self->speed = 1000;
	}
	FUNC0 (self->s.angles, self->s.origin2);
	FUNC3 (self->s.origin2, self->speed, self->s.origin2);

	if ( self->spawnflags & 1 ) {
		self->noise_index = FUNC1("sound/world/jumppad.wav");
	} else {
		self->noise_index = FUNC1("sound/misc/windfly.wav");
	}
	if ( self->target ) {
		FUNC2( self->s.origin, self->r.absmin );
		FUNC2( self->s.origin, self->r.absmax );
		self->think = AimAtTarget;
		self->nextthink = level.time + FRAMETIME;
	}
	self->use = Use_target_push;
}