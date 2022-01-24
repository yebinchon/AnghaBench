#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int keyCatchers; } ;
struct TYPE_5__ {scalar_t__ hWnd; } ;
struct TYPE_4__ {scalar_t__ mouseStartupDelayed; int /*<<< orphan*/  mouseInitialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int KEYCATCH_CONSOLE ; 
 int /*<<< orphan*/  _3DFX_DRIVER_NAME ; 
 TYPE_3__ cls ; 
 TYPE_2__ g_wv ; 
 int /*<<< orphan*/  in_appactive ; 
 scalar_t__ qfalse ; 
 TYPE_1__ s_wmv ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 (void) {
	// post joystick events
	FUNC5();

	if ( !s_wmv.mouseInitialized ) {
    if (s_wmv.mouseStartupDelayed && g_wv.hWnd)
		{
			FUNC0("Proceeding with delayed mouse init\n");
      FUNC7();
			s_wmv.mouseStartupDelayed = qfalse;
		}
		return;
	}

	if ( cls.keyCatchers & KEYCATCH_CONSOLE ) {
		// temporarily deactivate if not in the game and
		// running on the desktop
		// voodoo always counts as full screen
		if (FUNC2 ("r_fullscreen") == 0
			&& FUNC8( FUNC1("r_glDriver"), _3DFX_DRIVER_NAME) )	{
			FUNC4 ();
			return;
		}
	}

	if ( !in_appactive ) {
		FUNC4 ();
		return;
	}

	FUNC3();

	// post events to the system que
	FUNC6();

}