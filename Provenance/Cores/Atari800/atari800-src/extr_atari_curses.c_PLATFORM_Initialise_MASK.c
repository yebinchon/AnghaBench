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
 int /*<<< orphan*/  CURSES_CENTRAL ; 
 int /*<<< orphan*/  CURSES_LEFT ; 
 int /*<<< orphan*/  CURSES_RIGHT ; 
 int /*<<< orphan*/  CURSES_WIDE_1 ; 
 int /*<<< orphan*/  CURSES_WIDE_2 ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char**) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curses_mode ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdscr ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int FUNC9(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		if (FUNC8(argv[i], "-left") == 0)
			curses_mode = CURSES_LEFT;
		else if (FUNC8(argv[i], "-central") == 0)
			curses_mode = CURSES_CENTRAL;
		else if (FUNC8(argv[i], "-right") == 0)
			curses_mode = CURSES_RIGHT;
		else if (FUNC8(argv[i], "-wide1") == 0)
			curses_mode = CURSES_WIDE_1;
		else if (FUNC8(argv[i], "-wide2") == 0)
			curses_mode = CURSES_WIDE_2;
		else {
			if (FUNC8(argv[i], "-help") == 0) {
				FUNC0("\t-central         Center emulated screen\n"
				       "\t-left            Align left\n"
				       "\t-right           Align right (on 80 columns)\n"
				       "\t-wide1           Use 80 columns\n"
				       "\t-wide2           Use 80 columns, display twice"
				      );
			}
			argv[j++] = argv[i];
		}
	}

	*argc = j;

	FUNC4();
	FUNC7();
	FUNC2();					/* Don't wait for carriage return */
	FUNC5(stdscr, TRUE);
	FUNC3(0);				/* Disable Cursor */
	FUNC6(stdscr, 1);			/* Don't block for keypress */

#ifdef SOUND
	if (!Sound_Initialise(argc, argv))
		return FALSE;
#endif

	return TRUE;
}