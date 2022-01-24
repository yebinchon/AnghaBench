#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int state; int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
struct TYPE_18__ {TYPE_1__* yui; void* running_handler; void* paused_handler; int /*<<< orphan*/  toolbar; } ;
typedef  TYPE_2__ YuiVdp1 ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_2__ GtkToolItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 int YUI_IS_INIT ; 
 int YUI_IS_RUNNING ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

GtkWidget * FUNC17(YuiWindow * y) {
	GtkWidget * dialog;
	YuiVdp1 * yv;

	dialog = FUNC2(FUNC5(FUNC13(), NULL));
	yv = FUNC4(dialog);

	yv->yui = y;

	if (!( yv->yui->state & YUI_IS_INIT )) {
	  FUNC16(yv->yui);
	  FUNC15(yv->yui);
	}

	{
		GtkToolItem * play_button, * pause_button;

		play_button = FUNC9("run");
		FUNC7(FUNC8(yv->yui->action_group, "run"), FUNC2(play_button));
		FUNC10(FUNC0(yv->toolbar), FUNC1(play_button), -1);

		pause_button = FUNC9("pause");
		FUNC7(FUNC8(yv->yui->action_group, "pause"), FUNC2(pause_button));
		FUNC10(FUNC0(yv->toolbar), FUNC1(pause_button), -1);
	}
	yv->paused_handler = FUNC6(yv->yui, "paused", FUNC3(yui_vdp1_update), yv);
	yv->running_handler = FUNC6(yv->yui, "running", FUNC3(yui_vdp1_clear), yv);

	if ((yv->yui->state & (YUI_IS_RUNNING | YUI_IS_INIT)) == YUI_IS_INIT)
		FUNC14(yv);

	FUNC11(FUNC2(yv));

	return dialog;
}