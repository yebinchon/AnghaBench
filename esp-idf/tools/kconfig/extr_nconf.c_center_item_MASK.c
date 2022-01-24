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
 int /*<<< orphan*/  curses_menu ; 
 int /*<<< orphan*/ * curses_menu_items ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_window ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int mwin_max_lines ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int selected_index, int *last_top_row)
{
	int toprow;

	FUNC5(curses_menu, *last_top_row);
	toprow = FUNC6(curses_menu);
	if (selected_index < toprow ||
	    selected_index >= toprow+mwin_max_lines) {
		toprow = FUNC1(selected_index-mwin_max_lines/2, 0);
		if (toprow >= FUNC0(curses_menu)-mwin_max_lines)
			toprow = FUNC0(curses_menu)-mwin_max_lines;
		FUNC5(curses_menu, toprow);
	}
	FUNC4(curses_menu,
			curses_menu_items[selected_index]);
	*last_top_row = toprow;
	FUNC2(curses_menu);
	FUNC3(main_window);
}