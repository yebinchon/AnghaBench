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
struct TYPE_5__ {int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  int /*<<< orphan*/  GtkToggleAction ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ToggleNBG0 ; 
 int /*<<< orphan*/  ToggleNBG1 ; 
 int /*<<< orphan*/  ToggleNBG2 ; 
 int /*<<< orphan*/  ToggleNBG3 ; 
 int /*<<< orphan*/  ToggleRBG0 ; 
 int /*<<< orphan*/  ToggleVDP1 ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  gtk_main_quit ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yui_window_pause ; 
 int /*<<< orphan*/  yui_window_reset ; 
 int /*<<< orphan*/  yui_window_run ; 
 int /*<<< orphan*/  yui_window_toggle_frameskip ; 
 int /*<<< orphan*/  yui_window_toggle_fullscreen ; 

__attribute__((used)) static void FUNC9(YuiWindow * yw) {
	GtkAction * action;
	GtkToggleAction * taction;

	action = FUNC6("run", FUNC2("Run"), FUNC2("start emulation"), "gtk-media-play");
	FUNC5(yw->action_group, action, "<Ctrl>r");
	FUNC4(action, "activate", FUNC1(yui_window_run), yw);

	action = FUNC6("pause", FUNC2("Pause"), FUNC2("pause emulation"), "gtk-media-pause");
	FUNC5(yw->action_group, action, "<Ctrl>p");
	FUNC4(action, "activate", FUNC1(yui_window_pause), yw);

	action = FUNC6("reset", FUNC2("Reset"), FUNC2("reset emulation"), NULL);
	FUNC5(yw->action_group, action, NULL);
	FUNC4(action, "activate", FUNC1(yui_window_reset), yw);

	taction = FUNC7("fullscreen", FUNC2("Fullscreen"), NULL, "gtk-fullscreen");
	FUNC5(yw->action_group, FUNC0(taction), "<Ctrl>f");
	FUNC3(taction, "activate", FUNC1(yui_window_toggle_fullscreen), yw);

	taction = FUNC7("frameskip", FUNC2("Frame Skip/Limiter"), NULL, NULL);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(yui_window_toggle_frameskip), yw);

	action = FUNC6("quit", FUNC2("Quit"), NULL, "gtk-quit");
	FUNC5(yw->action_group, action, "<Ctrl>q");
	FUNC3(action, "activate", FUNC1(gtk_main_quit), yw);

	taction = FUNC7("toggle_vdp1", FUNC2("VDP1"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleVDP1), NULL);

	taction = FUNC7("toggle_nbg0", FUNC2("NBG0"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleNBG0), NULL);

	taction = FUNC7("toggle_nbg1", FUNC2("NBG1"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleNBG1), NULL);

	taction = FUNC7("toggle_nbg2", FUNC2("NBG2"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleNBG2), NULL);

	taction = FUNC7("toggle_nbg3", FUNC2("NBG3"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleNBG3), NULL);

	taction = FUNC7("toggle_rbg0", FUNC2("RBG0"), NULL, NULL);
	FUNC8(taction, TRUE);
	FUNC5(yw->action_group, FUNC0(taction), NULL);
	FUNC3(taction, "activate", FUNC1(ToggleRBG0), NULL);
}