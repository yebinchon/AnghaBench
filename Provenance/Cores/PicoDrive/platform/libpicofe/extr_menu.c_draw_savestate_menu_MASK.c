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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  time_buf ;
struct tm {int dummy; } ;

/* Variables and functions */
 int STATE_SLOT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 struct tm* FUNC1 (scalar_t__*) ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int state_slot_flags ; 
 scalar_t__* state_slot_times ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char*,...) ; 

__attribute__((used)) static void FUNC8(int menu_sel, int is_loading)
{
	int i, x, y, w, h;
	char time_buf[32];

	if (state_slot_flags & (1 << menu_sel))
		FUNC0(menu_sel);

	w = (13 + 2) * me_mfont_w;
	h = (1+2+STATE_SLOT_COUNT+1) * me_mfont_h;
	x = g_menuscreen_w / 2 - w / 2;
	if (x < 0) x = 0;
	y = g_menuscreen_h / 2 - h / 2;
	if (y < 0) y = 0;
#ifdef MENU_ALIGN_LEFT
	if (x > 12 + me_mfont_w * 2)
		x = 12 + me_mfont_w * 2;
#endif

	FUNC2(1, 1);

	FUNC7(x, y, is_loading ? "Load state" : "Save state");
	y += 3 * me_mfont_h;

	FUNC4(x - me_mfont_w * 2, y + menu_sel * me_mfont_h, (23 + 2) * me_mfont_w + 4);

	/* draw all slots */
	for (i = 0; i < STATE_SLOT_COUNT; i++, y += me_mfont_h)
	{
		if (!(state_slot_flags & (1 << i)))
			FUNC5(time_buf, "free");
		else {
			FUNC5(time_buf, "USED");
			if (state_slot_times[i] != 0) {
				time_t time = state_slot_times[i];
				struct tm *t = FUNC1(&time);
				FUNC6(time_buf, sizeof(time_buf), "%x %R", t);
			}
		}

		FUNC7(x, y, "SLOT %i (%s)", i, time_buf);
	}
	FUNC7(x, y, "back");

	FUNC3();
}