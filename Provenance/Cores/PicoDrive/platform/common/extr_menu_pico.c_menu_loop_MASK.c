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
 int /*<<< orphan*/  IN_CFG_BLOCKING ; 
 int /*<<< orphan*/  MA_MAIN_CHANGE_CD ; 
 int /*<<< orphan*/  MA_MAIN_LOAD_STATE ; 
 int /*<<< orphan*/  MA_MAIN_PATCHES ; 
 int /*<<< orphan*/  MA_MAIN_RESET_GAME ; 
 int /*<<< orphan*/  MA_MAIN_RESUME_GAME ; 
 int /*<<< orphan*/  MA_MAIN_SAVE_STATE ; 
 int PAHW_MCD ; 
 int PBTN_MBACK ; 
 int PBTN_MENU ; 
 int PBTN_MOK ; 
 scalar_t__ PGS_Menu ; 
 scalar_t__ PGS_Running ; 
 int PicoAHW ; 
 int PicoGameLoaded ; 
 int /*<<< orphan*/ * PicoPatches ; 
 int /*<<< orphan*/  e_menu_main ; 
 scalar_t__ engineState ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  menu_main_draw_status ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	static int sel = 0;

	FUNC2(e_menu_main, MA_MAIN_RESUME_GAME, PicoGameLoaded);
	FUNC2(e_menu_main, MA_MAIN_SAVE_STATE,  PicoGameLoaded);
	FUNC2(e_menu_main, MA_MAIN_LOAD_STATE,  PicoGameLoaded);
	FUNC2(e_menu_main, MA_MAIN_RESET_GAME,  PicoGameLoaded);
	FUNC2(e_menu_main, MA_MAIN_CHANGE_CD,   PicoAHW & PAHW_MCD);
	FUNC2(e_menu_main, MA_MAIN_PATCHES, PicoPatches != NULL);

	FUNC4(PicoGameLoaded);
	FUNC1(0, IN_CFG_BLOCKING, 1);
	FUNC3(e_menu_main, &sel, NULL, menu_main_draw_status);

	if (PicoGameLoaded) {
		if (engineState == PGS_Menu)
			engineState = PGS_Running;
		/* wait until menu, ok, back is released */
		while (FUNC0(NULL, 50) & (PBTN_MENU|PBTN_MOK|PBTN_MBACK))
			;
	}

	FUNC1(0, IN_CFG_BLOCKING, 0);
	FUNC5();
}