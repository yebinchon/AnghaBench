#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  renderfx; int /*<<< orphan*/  reType; int /*<<< orphan*/  axis; int /*<<< orphan*/  oldorigin; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ refEntity_t ;
struct TYPE_8__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_10__ {int /*<<< orphan*/  origin2; TYPE_1__ pos; } ;
typedef  TYPE_3__ entityState_t ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_11__ {TYPE_3__ currentState; } ;
typedef  TYPE_4__ centity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_NOSHADOW ; 
 int /*<<< orphan*/  RT_BEAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4( centity_t *cent ) {
	refEntity_t			ent;
	entityState_t		*s1;

	s1 = &cent->currentState;

	// create the render entity
	FUNC2 (&ent, 0, sizeof(ent));
	FUNC1( s1->pos.trBase, ent.origin );
	FUNC1( s1->origin2, ent.oldorigin );
	FUNC0( ent.axis );
	ent.reType = RT_BEAM;

	ent.renderfx = RF_NOSHADOW;

	// add to refresh list
	FUNC3(&ent);
}