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
struct TYPE_13__ {int /*<<< orphan*/  currentAngles; int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_11__ {int* trDelta; int /*<<< orphan*/  trBase; int /*<<< orphan*/  trType; } ;
struct TYPE_10__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_12__ {TYPE_2__ apos; TYPE_1__ pos; int /*<<< orphan*/  origin; } ;
struct TYPE_14__ {int speed; int spawnflags; int damage; TYPE_4__ r; TYPE_3__ s; int /*<<< orphan*/  model; } ;
typedef  TYPE_5__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  TR_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 

void FUNC4 (gentity_t *ent) {
	if ( !ent->speed ) {
		ent->speed = 100;
	}

	// set the axis of rotation
	ent->s.apos.trType = TR_LINEAR;
	if ( ent->spawnflags & 4 ) {
		ent->s.apos.trDelta[2] = ent->speed;
	} else if ( ent->spawnflags & 8 ) {
		ent->s.apos.trDelta[0] = ent->speed;
	} else {
		ent->s.apos.trDelta[1] = ent->speed;
	}

	if (!ent->damage) {
		ent->damage = 2;
	}

	FUNC3( ent, ent->model );
	FUNC0( ent );

	FUNC1( ent->s.origin, ent->s.pos.trBase );
	FUNC1( ent->s.pos.trBase, ent->r.currentOrigin );
	FUNC1( ent->s.apos.trBase, ent->r.currentAngles );

	FUNC2( ent );
}