#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; int /*<<< orphan*/  action_group; int /*<<< orphan*/  area; } ;
typedef  TYPE_1__ YuiWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SCSP_MUTE_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int YUI_IS_RUNNING ; 
 size_t YUI_WINDOW_PAUSED_SIGNAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * yui_window_signals ; 

void FUNC9(YuiWindow * yui) {
	if (yui->state & YUI_IS_RUNNING) {
		FUNC8(FUNC3(yui->area));
		FUNC2(SCSP_MUTE_SYSTEM);
		FUNC4(FUNC0(1));
		FUNC5(FUNC1(yui), yui_window_signals[YUI_WINDOW_PAUSED_SIGNAL], 0);
		yui->state &= ~YUI_IS_RUNNING;
		FUNC7(FUNC6(yui->action_group, "run"), TRUE);
		FUNC7(FUNC6(yui->action_group, "pause"), FALSE);
	}
}