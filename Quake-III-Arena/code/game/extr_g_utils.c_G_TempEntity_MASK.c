#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {scalar_t__ eType; } ;
struct TYPE_9__ {char* classname; int /*<<< orphan*/  freeAfterEvent; int /*<<< orphan*/  eventTime; TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_10__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 scalar_t__ ET_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

gentity_t *FUNC5( vec3_t origin, int event ) {
	gentity_t		*e;
	vec3_t		snapped;

	e = FUNC1();
	e->s.eType = ET_EVENTS + event;

	e->classname = "tempEntity";
	e->eventTime = level.time;
	e->freeAfterEvent = qtrue;

	FUNC3( origin, snapped );
	FUNC2( snapped );		// save network bandwidth
	FUNC0( e, snapped );

	// find cluster for PVS
	FUNC4( e );

	return e;
}