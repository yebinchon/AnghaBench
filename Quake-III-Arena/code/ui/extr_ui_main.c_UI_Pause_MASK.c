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
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int KEYCATCH_UI ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(qboolean b) {
	if (b) {
		// pause the game and set the ui keycatcher
	  FUNC0( "cl_paused", "1" );
		FUNC3( KEYCATCH_UI );
	} else {
		// unpause the game and clear the ui keycatcher
		FUNC3( FUNC2() & ~KEYCATCH_UI );
		FUNC1();
		FUNC0( "cl_paused", "0" );
	}
}