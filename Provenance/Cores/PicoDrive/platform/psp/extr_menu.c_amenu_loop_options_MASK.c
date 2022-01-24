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
typedef  int /*<<< orphan*/  menu_id ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OPT2_DONE ; 
 int /*<<< orphan*/  MA_OPT2_GAMMA ; 
 int /*<<< orphan*/  OPT2_ENTRY_COUNT ; 
 unsigned long PBTN_CIRCLE ; 
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_LEFT ; 
 unsigned long PBTN_RIGHT ; 
 unsigned long PBTN_UP ; 
 unsigned long PBTN_X ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opt2_entries ; 

__attribute__((used)) static void FUNC5(void)
{
	static int menu_sel = 0;
	int menu_sel_max;
	unsigned long inp = 0;
	menu_id selected_id;

	menu_sel_max = FUNC2(opt2_entries, OPT2_ENTRY_COUNT) - 1;

	for(;;)
	{
		FUNC0(menu_sel);
		inp = FUNC1(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_X|PBTN_CIRCLE, 0);
		if (inp & PBTN_UP  ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		selected_id = FUNC3(opt2_entries, OPT2_ENTRY_COUNT, menu_sel);
		if (inp & (PBTN_LEFT|PBTN_RIGHT)) { // multi choise
			if (!FUNC4(opt2_entries, OPT2_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0) &&
			    selected_id == MA_OPT2_GAMMA) {
				// TODO?
			}
		}
		if (inp & PBTN_CIRCLE) { // toggleable options
			if (!FUNC4(opt2_entries, OPT2_ENTRY_COUNT, selected_id, 1) &&
			    selected_id == MA_OPT2_DONE) {
				return;
			}
		}
		if (inp & PBTN_X) return;
	}
}