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
struct TYPE_2__ {int keyCatchers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int KEYCATCH_CONSOLE ; 
 int /*<<< orphan*/  _3DFX_DRIVER_NAME ; 
 TYPE_1__ cls ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6 (void) {

  // bk001130 - from cvs 1.17 (mkv)
  FUNC4(); // FIXME: disable if on desktop?

  if ( cls.keyCatchers & KEYCATCH_CONSOLE )
  {
    // temporarily deactivate if not in the game and
    // running on the desktop
    // voodoo always counts as full screen
    if (FUNC1 ("r_fullscreen") == 0
        && FUNC5( FUNC0("r_glDriver"), _3DFX_DRIVER_NAME ) )
    {
      FUNC3 ();
      return;
    }
  }

  FUNC2();
}