#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {double skinNum; int /*<<< orphan*/  frame; int /*<<< orphan*/  oldframe; int /*<<< orphan*/  reType; int /*<<< orphan*/ * axis; int /*<<< orphan*/  oldorigin; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ refEntity_t ;
struct TYPE_8__ {double clientNum; int /*<<< orphan*/  frame; int /*<<< orphan*/  powerups; int /*<<< orphan*/  eventParm; int /*<<< orphan*/  origin2; } ;
typedef  TYPE_2__ entityState_t ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_9__ {int /*<<< orphan*/  lerpOrigin; TYPE_2__ currentState; } ;
typedef  TYPE_3__ centity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_PORTALSURFACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC7( centity_t *cent ) {
	refEntity_t			ent;
	entityState_t		*s1;

	s1 = &cent->currentState;

	// create the render entity
	FUNC5 (&ent, 0, sizeof(ent));
	FUNC3( cent->lerpOrigin, ent.origin );
	FUNC3( s1->origin2, ent.oldorigin );
	FUNC0( s1->eventParm, ent.axis[0] );
	FUNC2( ent.axis[1], ent.axis[0] );

	// negating this tends to get the directions like they want
	// we really should have a camera roll value
	FUNC4( vec3_origin, ent.axis[1], ent.axis[1] );

	FUNC1( ent.axis[0], ent.axis[1], ent.axis[2] );
	ent.reType = RT_PORTALSURFACE;
	ent.oldframe = s1->powerups;
	ent.frame = s1->frame;		// rotation speed
	ent.skinNum = s1->clientNum/256.0 * 360;	// roll offset

	// add to refresh list
	FUNC6(&ent);
}