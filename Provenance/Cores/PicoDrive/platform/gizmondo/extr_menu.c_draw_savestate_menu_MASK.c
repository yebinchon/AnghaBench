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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int state_slot_flags ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,...) ; 

__attribute__((used)) static void FUNC5(int menu_sel, int is_loading)
{
	int tl_x = 25, tl_y = 60, y, i;

	if (state_slot_flags & (1 << menu_sel))
		FUNC0(menu_sel);
	FUNC1(1);

	FUNC4(tl_x, 30, is_loading ? "Load state" : "Save state");

	FUNC3(tl_x - 16, tl_y + menu_sel*10, 108);

	/* draw all 10 slots */
	y = tl_y;
	for (i = 0; i < 10; i++, y+=10)
	{
		FUNC4(tl_x, y, "SLOT %i (%s)", i, (state_slot_flags & (1 << i)) ? "USED" : "free");
	}
	FUNC4(tl_x, y, "back");

	FUNC2();
}