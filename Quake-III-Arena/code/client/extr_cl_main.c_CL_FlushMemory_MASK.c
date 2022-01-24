#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* com_sv_running ; 

void FUNC5( void ) {

	// shutdown all the client stuff
	FUNC0();

	// if not running a server clear the whole hunk
	if ( !com_sv_running->integer ) {
		// clear the whole hunk
		FUNC3();
		// clear collision map data
		FUNC2();
	}
	else {
		// clear all the client data on the hunk
		FUNC4();
	}

	FUNC1();
}