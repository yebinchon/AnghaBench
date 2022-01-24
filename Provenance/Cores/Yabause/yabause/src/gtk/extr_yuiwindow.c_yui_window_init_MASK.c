#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/ * area; int /*<<< orphan*/  clean_handler; int /*<<< orphan*/ * menu; int /*<<< orphan*/ * box; int /*<<< orphan*/  log; struct TYPE_12__* logpopup; int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAccelGroup ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_POLICY_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (char const* const,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char** FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/ * FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC33 () ; 
 int /*<<< orphan*/  yui_set_accel_group ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  yui_window_destroy ; 
 int /*<<< orphan*/  yui_window_keep_clean ; 
 int /*<<< orphan*/  yui_window_keypress ; 
 int /*<<< orphan*/  yui_window_keyrelease ; 
 int /*<<< orphan*/  yui_window_log_delete ; 

__attribute__((used)) static void FUNC35 (YuiWindow * yw) {
	GtkAccelGroup * accel_group = FUNC14();
	GtkWidget * scroll;

	yw->action_group = FUNC17("yui");
	FUNC34(yw);
	FUNC18(FUNC15(yw->action_group, "pause"), FALSE);
	FUNC18(FUNC15(yw->action_group, "reset"), FALSE);
	{
		GList * list = FUNC16(yw->action_group);
		FUNC11(list, yui_set_accel_group, accel_group);
	}
	FUNC29(FUNC4(yw), accel_group);

	{
		const gchar * const * data_dir;
		gboolean pngfound = FALSE;
		gchar * pngfile;

		data_dir = FUNC10();
		while (!pngfound && (*data_dir != NULL)) {
			pngfile = FUNC8(*data_dir, "pixmaps", "yabause.png", NULL);
			if (FUNC9(pngfile, G_FILE_TEST_EXISTS)) {
				FUNC31(FUNC4(yw), FUNC13(pngfile, NULL));
				pngfound = TRUE;
			}
			data_dir++;
		}

		if (!pngfound) {
			FUNC31(FUNC4(yw), FUNC13("yabause.png", NULL));
		}
	}

	FUNC32 (FUNC4(yw), "Yabause");

	yw->box = FUNC25(FALSE, 0);
	FUNC20(FUNC1(yw), yw->box);

	yw->menu = FUNC7(yw);
	FUNC19(FUNC0(yw->box), yw->menu, FALSE, FALSE, 0);

	yw->area = FUNC33();
	FUNC19(FUNC0(yw->box), yw->area, TRUE, TRUE, 0);
	FUNC26(FUNC3(yw->area), 320, 224);

	FUNC12(FUNC6(yw), "delete-event", FUNC5(yui_window_destroy), NULL);
	FUNC12(FUNC6(yw), "key-press-event", FUNC5(yui_window_keypress), yw);
	FUNC12(FUNC6(yw), "key-release-event", FUNC5(yui_window_keyrelease), yw);

	yw->logpopup = FUNC30(GTK_WINDOW_TOPLEVEL);
	FUNC32( FUNC4( yw->logpopup ), "Yabause Logs" );
	FUNC26( yw->logpopup, 500, 300 );
	scroll = FUNC22(NULL, NULL);
	FUNC23(FUNC2(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
	FUNC20(FUNC1(yw->logpopup), scroll);
	FUNC12(FUNC6(yw->logpopup), "delete-event", FUNC5(yui_window_log_delete), yw);

	yw->log = FUNC24();
	FUNC21(FUNC2(scroll), yw->log);

	FUNC27(yw->box);
	FUNC28(yw->menu);
	FUNC27(yw->area);

	yw->clean_handler = FUNC12(yw->area, "expose-event", FUNC5(yui_window_keep_clean), yw);
	yw->state = 0;
}