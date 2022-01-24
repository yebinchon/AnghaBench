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
 int ESCDELAY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 size_t MAIN_MENU_BACK ; 
 size_t MAIN_MENU_FORE ; 
 size_t MAIN_MENU_GREY ; 
 int /*<<< orphan*/  O_IGNORECASE ; 
 int /*<<< orphan*/  O_NONCYCLIC ; 
 int /*<<< orphan*/  O_ONEVALUE ; 
 int /*<<< orphan*/  O_SHOWDESC ; 
 int /*<<< orphan*/  O_SHOWMATCH ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * conf_message_callback ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curses_menu ; 
 int /*<<< orphan*/  curses_menu_items ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  global_exit ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_window ; 
 char* menu_no_f_instructions ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int single_menu_mode ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC37 (char*,char*) ; 
 scalar_t__ FUNC38 (char*,char*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 

int FUNC41(int ac, char **av)
{
	int lines, columns;
	char *mode;

	FUNC34(LC_ALL, "");
	FUNC2(PACKAGE, LOCALEDIR);
	FUNC39(PACKAGE);

	if (ac > 1 && FUNC38(av[1], "-s") == 0) {
		/* Silence conf_read() until the real callback is set up */
		FUNC9(NULL);
		av++;
	}
	FUNC7(av[1]);
	FUNC8(NULL);

	mode = FUNC15("NCONFIG_MODE");
	if (mode) {
		if (!FUNC37(mode, "single_menu"))
			single_menu_mode = 1;
	}

	/* Initialize curses */
	FUNC18();
	/* set color theme */
	FUNC27();

	FUNC3();
	FUNC23();
	FUNC19(stdscr, TRUE);
	FUNC10(0);

	FUNC16(stdscr, lines, columns);
	if (columns < 75 || lines < 20) {
		FUNC13();
		FUNC25("Your terminal should have at "
			"least 20 lines and 75 columns\n");
		return 1;
	}

	FUNC24(stdscr, FALSE);
#if NCURSES_REENTRANT
	set_escdelay(1);
#else
	ESCDELAY = 1;
#endif

	/* set btns menu */
	curses_menu = FUNC22(curses_menu_items);
	FUNC20(curses_menu, O_SHOWDESC);
	FUNC21(curses_menu, O_SHOWMATCH);
	FUNC21(curses_menu, O_ONEVALUE);
	FUNC21(curses_menu, O_NONCYCLIC);
	FUNC21(curses_menu, O_IGNORECASE);
	FUNC33(curses_menu, " ");
	FUNC31(curses_menu, attributes[MAIN_MENU_FORE]);
	FUNC30(curses_menu, attributes[MAIN_MENU_BACK]);
	FUNC32(curses_menu, attributes[MAIN_MENU_GREY]);

	FUNC28(FUNC6());
	FUNC35();

	/* check for KEY_FUNC(1) */
	if (FUNC17(FUNC0(1)) == FALSE) {
		FUNC36(main_window,
				FUNC1("Instructions"),
				FUNC1(menu_no_f_instructions));
	}

	FUNC9(conf_message_callback);
	/* do the work */
	while (!global_exit) {
		FUNC5(&rootmenu);
		if (!global_exit && FUNC12() == 0)
			break;
	}
	/* ok, we are done */
	FUNC40(curses_menu);
	FUNC14(curses_menu);
	FUNC11(main_window);
	FUNC4();
	FUNC26();
	FUNC13();
	return 0;
}