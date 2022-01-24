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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * main_window ; 
 int mwin_max_cols ; 
 int mwin_max_lines ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  stdscr ; 

void FUNC5(void)
{
	int lines, columns;

	FUNC1(stdscr, lines, columns);

	if (main_window != NULL)
		FUNC0(main_window);

	/* set up the menu and menu window */
	main_window = FUNC4(lines-2, columns-2, 2, 1);
	FUNC2(main_window, TRUE);
	mwin_max_lines = lines-7;
	mwin_max_cols = columns-6;

	/* panels order is from bottom to top */
	FUNC3(main_window);
}