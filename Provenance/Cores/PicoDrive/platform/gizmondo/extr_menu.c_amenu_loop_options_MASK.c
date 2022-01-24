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
typedef  int /*<<< orphan*/  menu_id ;
struct TYPE_2__ {int gamma; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  MA_OPT2_DONE ; 
 int /*<<< orphan*/  MA_OPT2_GAMMA ; 
 int /*<<< orphan*/  OPT2_ENTRY_COUNT ; 
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_LEFT ; 
 unsigned long PBTN_PLAY ; 
 unsigned long PBTN_REW ; 
 unsigned long PBTN_RIGHT ; 
 unsigned long PBTN_STOP ; 
 unsigned long PBTN_UP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opt2_entries ; 

__attribute__((used)) static void FUNC7(void)
{
	static int menu_sel = 0;
	int menu_sel_max;
	unsigned long inp = 0;
	menu_id selected_id;

	menu_sel_max = FUNC4(opt2_entries, OPT2_ENTRY_COUNT) - 1;

	for(;;)
	{
		FUNC2(menu_sel);
		inp = FUNC3(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_PLAY|PBTN_STOP|PBTN_REW);
		if (inp & PBTN_UP  ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		selected_id = FUNC5(opt2_entries, OPT2_ENTRY_COUNT, menu_sel);
		if (inp & (PBTN_LEFT|PBTN_RIGHT)) { // multi choise
			if (!FUNC6(opt2_entries, OPT2_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0) &&
			    selected_id == MA_OPT2_GAMMA) {
				while ((inp = FUNC0()) & (PBTN_LEFT|PBTN_RIGHT)) {
					currentConfig.gamma += (inp & PBTN_LEFT) ? -1 : 1;
					if (currentConfig.gamma <   1) currentConfig.gamma =   1;
					if (currentConfig.gamma > 300) currentConfig.gamma = 300;
					FUNC2(menu_sel);
					FUNC1(18);
				}
			}
		}
		if (inp & PBTN_PLAY) { // toggleable options
			if (!FUNC6(opt2_entries, OPT2_ENTRY_COUNT, selected_id, 1) &&
			    selected_id == MA_OPT2_DONE) {
				return;
			}
		}
		if (inp & (PBTN_STOP|PBTN_REW)) return;
	}
}