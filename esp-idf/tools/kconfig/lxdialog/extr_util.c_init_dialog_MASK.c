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
struct TYPE_2__ {char const* backtitle; } ;

/* Variables and functions */
 int ERRDISPLAYTOOSMALL ; 
 int /*<<< orphan*/  TRUE ; 
 int WINDOW_HEIGTH_MIN ; 
 int WINDOW_WIDTH_MIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ dlg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  saved_x ; 
 int /*<<< orphan*/  saved_y ; 
 int /*<<< orphan*/  stdscr ; 

int FUNC10(const char *backtitle)
{
	int height, width;

	FUNC7();		/* Init curses */

	/* Get current cursor position for signal handler in mconf.c */
	FUNC6(stdscr, saved_y, saved_x);

	FUNC5(stdscr, height, width);
	if (height < WINDOW_HEIGTH_MIN || width < WINDOW_WIDTH_MIN) {
		FUNC3();
		return -ERRDISPLAYTOOSMALL;
	}

	dlg.backtitle = backtitle;
	FUNC1(FUNC4("MENUCONFIG_COLOR"));

	FUNC8(stdscr, TRUE);
	FUNC0();
	FUNC9();
	FUNC2();

	return 0;
}