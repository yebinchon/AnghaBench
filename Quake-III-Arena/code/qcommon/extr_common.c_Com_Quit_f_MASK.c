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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  com_errorEntered ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC5( void ) {
	// don't try to shutdown if we are in a recursive error
	if ( !com_errorEntered ) {
		FUNC3 ("Server quit\n");
		FUNC0 ();
		FUNC1 ();
		FUNC2(qtrue);
	}
	FUNC4 ();
}