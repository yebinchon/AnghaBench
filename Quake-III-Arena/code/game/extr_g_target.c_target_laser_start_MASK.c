#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; int /*<<< orphan*/  eType; } ;
struct TYPE_8__ {int damage; int spawnflags; int /*<<< orphan*/  think; int /*<<< orphan*/  use; int /*<<< orphan*/  movedir; TYPE_1__ s; struct TYPE_8__* enemy; scalar_t__ target; int /*<<< orphan*/  classname; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  ET_BEAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  target_laser_think ; 
 int /*<<< orphan*/  target_laser_use ; 
 int /*<<< orphan*/  targetname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7 (gentity_t *self)
{
	gentity_t *ent;

	self->s.eType = ET_BEAM;

	if (self->target) {
		ent = FUNC1 (NULL, FUNC0(targetname), self->target);
		if (!ent) {
			FUNC2 ("%s at %s: %s is a bad target\n", self->classname, FUNC6(self->s.origin), self->target);
		}
		self->enemy = ent;
	} else {
		FUNC3 (self->s.angles, self->movedir);
	}

	self->use = target_laser_use;
	self->think = target_laser_think;

	if ( !self->damage ) {
		self->damage = 1;
	}

	if (self->spawnflags & 1)
		FUNC5 (self);
	else
		FUNC4 (self);
}