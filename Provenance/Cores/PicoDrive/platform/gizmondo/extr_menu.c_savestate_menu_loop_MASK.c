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
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_PLAY ; 
 unsigned long PBTN_STOP ; 
 unsigned long PBTN_UP ; 
 int /*<<< orphan*/  PicoStateProgressCB ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emu_stateCb ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  menuErrorMsg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int state_slot ; 
 int state_slot_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(int is_loading)
{
	static int menu_sel = 10;
	int menu_sel_max = 10;
	unsigned long inp = 0;

	FUNC3();

	for(;;)
	{
		FUNC0(menu_sel, is_loading);
		inp = FUNC2(PBTN_UP|PBTN_DOWN|PBTN_PLAY|PBTN_STOP);
		if(inp & PBTN_UP  ) {
			do {
				menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max;
			} while (!(state_slot_flags & (1 << menu_sel)) && menu_sel != menu_sel_max && is_loading);
		}
		if(inp & PBTN_DOWN) {
			do {
				menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0;
			} while (!(state_slot_flags & (1 << menu_sel)) && menu_sel != menu_sel_max && is_loading);
		}
		if(inp & PBTN_PLAY) { // save/load
			if (menu_sel < 10) {
				state_slot = menu_sel;
				PicoStateProgressCB = emu_stateCb; /* also suitable for menu */
				if (FUNC1(is_loading, 0)) {
					FUNC4(menuErrorMsg, is_loading ? "Load failed" : "Save failed");
					return 1;
				}
				return 0;
			} else	return 1;
		}
		if(inp & PBTN_STOP) return 1;
	}
}