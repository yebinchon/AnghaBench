#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trace_t ;
typedef  int /*<<< orphan*/  trace ;
struct TYPE_10__ {scalar_t__ nextthink; int /*<<< orphan*/  item; int /*<<< orphan*/  target; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  targetname ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
	gentity_t	*t;
	trace_t		trace;

	if ( !activator->client ) {
		return;
	}

	if ( !ent->target ) {
		return;
	}

	FUNC3( &trace, 0, sizeof( trace ) );
	t = NULL;
	while ( (t = FUNC1 (t, FUNC0(targetname), ent->target)) != NULL ) {
		if ( !t->item ) {
			continue;
		}
		FUNC2( t, activator, &trace );

		// make sure it isn't going to respawn or show any events
		t->nextthink = 0;
		FUNC4( t );
	}
}