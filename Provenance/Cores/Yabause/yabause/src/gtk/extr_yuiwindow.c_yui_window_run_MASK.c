#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int state; int /*<<< orphan*/  action_group; int /*<<< orphan*/  run_func; } ;
typedef  TYPE_1__ YuiWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SCSP_MUTE_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int YUI_IS_INIT ; 
 int YUI_IS_RUNNING ; 
 size_t YUI_WINDOW_RUNNING_SIGNAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * yui_window_signals ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(YuiWindow * yui) {
	FUNC7(yui);

	if ((yui->state & YUI_IS_INIT) && ((yui->state & YUI_IS_RUNNING) == 0)) {
		FUNC2(SCSP_MUTE_SYSTEM);
		FUNC3(yui->run_func, FUNC0(1));
		FUNC4(FUNC1(yui), yui_window_signals[YUI_WINDOW_RUNNING_SIGNAL], 0);
		yui->state |= YUI_IS_RUNNING;
		FUNC6(FUNC5(yui->action_group, "run"), FALSE);
		FUNC6(FUNC5(yui->action_group, "pause"), TRUE);
	}
}