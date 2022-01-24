#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int state; int /*<<< orphan*/  hbox; int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  TYPE_1__ YuiScsp ;
typedef  TYPE_1__ GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 int YUI_IS_INIT ; 
 int YUI_IS_RUNNING ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 () ; 
 TYPE_1__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 void* paused_handler ; 
 void* running_handler ; 
 TYPE_1__* yui ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

GtkWidget * FUNC16(YuiWindow * y) {
	GtkWidget * dialog;
	YuiScsp * yv;

	yui = y;

	dialog = FUNC1(FUNC4(FUNC14(), NULL));
	yv = FUNC3(dialog);

	{
		GtkWidget * but2, * but3, * but4;
		but2 = FUNC9();
		FUNC6(FUNC7(yui->action_group, "run"), but2);
		FUNC8(FUNC0(yv->hbox), but2, FALSE, FALSE, 2);

		but3 = FUNC9();
		FUNC6(FUNC7(yui->action_group, "pause"), but3);
		FUNC8(FUNC0(yv->hbox), but3, FALSE, FALSE, 2);

		but4 = FUNC10("gtk-close");
		FUNC5(but4, "clicked", FUNC2(yui_scsp_destroy), dialog);
		FUNC8(FUNC0(yv->hbox), but4, FALSE, FALSE, 2);
	}
	paused_handler = FUNC5(yui, "paused", FUNC2(yui_scsp_update), yv);
	running_handler = FUNC5(yui, "running", FUNC2(yui_scsp_clear), yv);

	if ((yui->state & (YUI_IS_RUNNING | YUI_IS_INIT)) == YUI_IS_INIT)
		FUNC15(yv);

	FUNC11(FUNC1(yv));

	return dialog;
}