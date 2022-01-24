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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  PBTN_MA2 ; 
 int /*<<< orphan*/  PBTN_MA3 ; 
 int /*<<< orphan*/  PBTN_MBACK ; 
 int /*<<< orphan*/  PBTN_MOK ; 
 unsigned short FUNC0 (char*) ; 
 scalar_t__ g_autostateld_opt ; 
 scalar_t__ g_menu_filter_off ; 
 int g_menuscreen_h ; 
 scalar_t__ g_menuscreen_ptr ; 
 int g_menuscreen_w ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int me_mfont_w ; 
 int me_sfont_h ; 
 int me_sfont_w ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void FUNC7(char *curdir, struct dirent **namelist,
	int n, int sel, int show_help)
{
	int max_cnt, start, i, x, pos;
	void *darken_ptr;
	char buff[64];

	max_cnt = g_menuscreen_h / me_sfont_h;
	start = max_cnt / 2 - sel;
	n--; // exclude current dir (".")

	FUNC3(1, 1);

//	if (!rom_loaded)
//		menu_darken_bg(gp2x_screen, 320*240, 0);

	darken_ptr = (short *)g_menuscreen_ptr + g_menuscreen_w * max_cnt/2 * me_sfont_h;
	FUNC2(darken_ptr, darken_ptr, g_menuscreen_w * me_sfont_h * 8 / 10, 0);

	x = 5 + me_mfont_w + 1;
	if (start - 2 >= 0)
		FUNC5(14, (start - 2) * me_sfont_h, curdir, 0xffff);
	for (i = 0; i < n; i++) {
		pos = start + i;
		if (pos < 0)  continue;
		if (pos >= max_cnt) break;
		if (namelist[i+1]->d_type == DT_DIR) {
			FUNC5(x, pos * me_sfont_h, "/", 0xfff6);
			FUNC5(x + me_sfont_w, pos * me_sfont_h, namelist[i+1]->d_name, 0xfff6);
		} else {
			unsigned short color = FUNC0(namelist[i+1]->d_name);
			FUNC5(x, pos * me_sfont_h, namelist[i+1]->d_name, color);
		}
	}
	FUNC5(5, max_cnt/2 * me_sfont_h, ">", 0xffff);

	if (show_help) {
		darken_ptr = (short *)g_menuscreen_ptr
			+ g_menuscreen_w * (g_menuscreen_h - me_sfont_h * 5 / 2);
		FUNC2(darken_ptr, darken_ptr,
			g_menuscreen_w * (me_sfont_h * 5 / 2), 1);

		FUNC6(buff, sizeof(buff), "%s - select, %s - back",
			FUNC1(-1, -PBTN_MOK), FUNC1(-1, -PBTN_MBACK));
		FUNC5(x, g_menuscreen_h - me_sfont_h * 3 - 2, buff, 0xe78c);

		FUNC6(buff, sizeof(buff), g_menu_filter_off ?
			 "%s - hide unknown files" : "%s - show all files",
			FUNC1(-1, -PBTN_MA3));
		FUNC5(x, g_menuscreen_h - me_sfont_h * 2 - 2, buff, 0xe78c);

		FUNC6(buff, sizeof(buff), g_autostateld_opt ?
			 "%s - autoload save is ON" : "%s - autoload save is OFF",
			FUNC1(-1, -PBTN_MA2));
		FUNC5(x, g_menuscreen_h - me_sfont_h * 1 - 2, buff, 0xe78c);
	}

	FUNC4();
}