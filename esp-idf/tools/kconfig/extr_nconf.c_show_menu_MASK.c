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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 size_t MAIN_HEADING ; 
 size_t MAIN_MENU_BOX ; 
 size_t MAIN_MENU_HEADING ; 
 size_t NORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char const* current_instructions ; 
 int /*<<< orphan*/  curses_menu ; 
 int /*<<< orphan*/  curses_menu_items ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_window ; 
 int /*<<< orphan*/  menu_backtitle ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int mwin_max_cols ; 
 int mwin_max_lines ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(const char *prompt, const char *instructions,
		int selected_index, int *last_top_row)
{
	int maxx, maxy;
	WINDOW *menu_window;

	current_instructions = instructions;

	FUNC2();
	(void) FUNC17(main_window, attributes[NORMAL]);
	FUNC10(stdscr, 1, 0, FUNC4(stdscr),
			menu_backtitle,
			attributes[MAIN_HEADING]);

	(void) FUNC17(main_window, attributes[MAIN_MENU_BOX]);
	FUNC0(main_window, 0, 0);
	(void) FUNC17(main_window, attributes[MAIN_MENU_HEADING]);
	FUNC7(main_window, 0, 3, " %s ", prompt);
	(void) FUNC17(main_window, attributes[NORMAL]);

	FUNC14(curses_menu, curses_menu_items);

	/* position the menu at the middle of the screen */
	FUNC12(curses_menu, &maxy, &maxx);
	maxx = FUNC6(maxx, mwin_max_cols-2);
	maxy = mwin_max_lines;
	menu_window = FUNC3(main_window,
			maxy,
			maxx,
			2,
			(mwin_max_cols-maxx)/2);
	FUNC5(menu_window, TRUE);
	FUNC16(curses_menu, menu_window);
	FUNC15(curses_menu, menu_window);

	/* must reassert this after changing items, otherwise returns to a
	 * default of 16
	 */
	FUNC13(curses_menu, maxy, 1);
	FUNC1(selected_index, last_top_row);
	FUNC13(curses_menu, maxy, 1);

	FUNC9();

	/* Post the menu */
	FUNC8(curses_menu);
	FUNC11(main_window);
}