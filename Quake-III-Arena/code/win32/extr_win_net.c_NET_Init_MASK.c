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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  winsockInitialized ; 
 int /*<<< orphan*/  winsockdata ; 

void FUNC5( void ) {
	int		r;

	r = FUNC4( FUNC1( 1, 1 ), &winsockdata );
	if( r ) {
		FUNC0( "WARNING: Winsock initialization failed, returned %d\n", r );
		return;
	}

	winsockInitialized = qtrue;
	FUNC0( "Winsock Initialized\n" );

	// this is really just to get the cvars registered
	FUNC3();

	//FIXME testing!
	FUNC2( qtrue );
}