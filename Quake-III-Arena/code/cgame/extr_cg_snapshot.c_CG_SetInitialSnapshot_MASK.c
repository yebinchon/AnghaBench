#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_11__ {size_t clientNum; } ;
struct TYPE_12__ {int numEntities; TYPE_2__* entities; int /*<<< orphan*/  serverCommandSequence; TYPE_10__ ps; } ;
typedef  TYPE_1__ snapshot_t ;
struct TYPE_13__ {size_t number; } ;
typedef  TYPE_2__ entityState_t ;
struct TYPE_14__ {int /*<<< orphan*/  currentValid; int /*<<< orphan*/  interpolate; int /*<<< orphan*/  currentState; } ;
typedef  TYPE_3__ centity_t ;
struct TYPE_15__ {TYPE_1__* snap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_6__ cg ; 
 TYPE_3__* cg_entities ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC7( snapshot_t *snap ) {
	int				i;
	centity_t		*cent;
	entityState_t	*state;

	cg.snap = snap;

	FUNC0( &snap->ps, &cg_entities[ snap->ps.clientNum ].currentState, qfalse );

	// sort out solid entities
	FUNC1();

	FUNC3( snap->serverCommandSequence );

	// set our local weapon selection pointer to
	// what the server has indicated the current weapon is
	FUNC5();

	for ( i = 0 ; i < cg.snap->numEntities ; i++ ) {
		state = &cg.snap->entities[ i ];
		cent = &cg_entities[ state->number ];

		FUNC6(&cent->currentState, state, sizeof(entityState_t));
		//cent->currentState = *state;
		cent->interpolate = qfalse;
		cent->currentValid = qtrue;

		FUNC4( cent );

		// check for events
		FUNC2( cent );
	}
}