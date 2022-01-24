#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  GAME_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ gvm ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4( void ) {
	if ( !gvm ) {
		return;
	}
	FUNC2( gvm, GAME_SHUTDOWN, qtrue );

	// do a restart instead of a free
	gvm = FUNC3( gvm );
	if ( !gvm ) { // bk001212 - as done below
		FUNC0( ERR_FATAL, "VM_Restart on game failed" );
	}

	FUNC1( qtrue );
}