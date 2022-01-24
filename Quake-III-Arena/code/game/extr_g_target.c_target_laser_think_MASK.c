#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_17__ {int entityNum; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_5__ trace_t ;
struct TYPE_16__ {int /*<<< orphan*/  origin2; int /*<<< orphan*/  number; int /*<<< orphan*/  origin; } ;
struct TYPE_18__ {scalar_t__ nextthink; TYPE_4__ s; int /*<<< orphan*/  damage; int /*<<< orphan*/  movedir; int /*<<< orphan*/  activator; TYPE_3__* enemy; } ;
typedef  TYPE_6__ gentity_t ;
struct TYPE_14__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_13__ {int /*<<< orphan*/  origin; } ;
struct TYPE_15__ {TYPE_2__ r; TYPE_1__ s; } ;
struct TYPE_12__ {scalar_t__ time; } ;

/* Variables and functions */
 int CONTENTS_BODY ; 
 int CONTENTS_CORPSE ; 
 int CONTENTS_SOLID ; 
 int /*<<< orphan*/  DAMAGE_NO_KNOCKBACK ; 
 scalar_t__ FRAMETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOD_TARGET_LASER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_entities ; 
 TYPE_10__ level ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7 (gentity_t *self) {
	vec3_t	end;
	trace_t	tr;
	vec3_t	point;

	// if pointed at another entity, set movedir to point at it
	if ( self->enemy ) {
		FUNC2 (self->enemy->s.origin, 0.5, self->enemy->r.mins, point);
		FUNC2 (point, 0.5, self->enemy->r.maxs, point);
		FUNC4 (point, self->s.origin, self->movedir);
		FUNC3 (self->movedir);
	}

	// fire forward and see what we hit
	FUNC2 (self->s.origin, 2048, self->movedir, end);

	FUNC6( &tr, self->s.origin, NULL, NULL, end, self->s.number, CONTENTS_SOLID|CONTENTS_BODY|CONTENTS_CORPSE);

	if ( tr.entityNum ) {
		// hurt it if we can
		FUNC0 ( &g_entities[tr.entityNum], self, self->activator, self->movedir, 
			tr.endpos, self->damage, DAMAGE_NO_KNOCKBACK, MOD_TARGET_LASER);
	}

	FUNC1 (tr.endpos, self->s.origin2);

	FUNC5( self );
	self->nextthink = level.time + FRAMETIME;
}