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
typedef  int /*<<< orphan*/  PANEL ;

/* Variables and functions */
 size_t DIALOG_MENU_FORE ; 
 int /*<<< orphan*/  F_BACK ; 
 int /*<<< orphan*/  F_EXIT ; 
 int /*<<< orphan*/  F_HELP ; 
#define  KEY_DOWN 135 
#define  KEY_END 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  KEY_HOME 133 
#define  KEY_LEFT 132 
#define  KEY_NPAGE 131 
#define  KEY_PPAGE 130 
#define  KEY_RIGHT 129 
#define  KEY_UP 128 
 size_t SCROLLWIN_BOX ; 
 size_t SCROLLWIN_HEADING ; 
 size_t SCROLLWIN_TEXT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (char const*,int) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int,int) ; 
 int /*<<< orphan*/ * FUNC16 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

void FUNC22(WINDOW *main_window,
		const char *title,
		const char *text)
{
	int res;
	int total_lines = FUNC8(text);
	int x, y, lines, columns;
	int start_x = 0, start_y = 0;
	int text_lines = 0, text_cols = 0;
	int total_cols = 0;
	int win_cols = 0;
	int win_lines = 0;
	int i = 0;
	WINDOW *win;
	WINDOW *pad;
	PANEL *panel;

	FUNC9(stdscr, lines, columns);

	/* find the widest line of msg: */
	total_lines = FUNC8(text);
	for (i = 0; i < total_lines; i++) {
		const char *line = FUNC6(text, i);
		int len = FUNC7(line);
		total_cols = FUNC11(total_cols, len+2);
	}

	/* create the pad */
	pad = FUNC15(total_lines+10, total_cols+10);
	(void) FUNC19(pad, attributes[SCROLLWIN_TEXT]);
	FUNC5(pad, text);

	win_lines = FUNC12(total_lines+4, lines-2);
	win_cols = FUNC12(total_cols+2, columns-2);
	text_lines = FUNC11(win_lines-4, 0);
	text_cols = FUNC11(win_cols-2, 0);

	/* place window in middle of screen */
	y = (lines-win_lines)/2;
	x = (columns-win_cols)/2;

	win = FUNC16(win_lines, win_cols, y, x);
	FUNC10(win, TRUE);
	/* show the help in the help window, and show the help panel */
	(void) FUNC19(win, attributes[SCROLLWIN_BOX]);
	FUNC1(win, 0, 0);
	(void) FUNC19(win, attributes[SCROLLWIN_HEADING]);
	FUNC13(win, 0, 3, " %s ", title);
	panel = FUNC14(win);

	/* handle scrolling */
	do {

		FUNC2(pad, win, start_y, start_x, 2, 2, text_lines,
				text_cols, 0);
		FUNC17(win,
				text_lines+2,
				0,
				text_cols,
				"<OK>",
				attributes[DIALOG_MENU_FORE]);
		FUNC21(win);

		res = FUNC20(win);
		switch (res) {
		case KEY_NPAGE:
		case ' ':
		case 'd':
			start_y += text_lines-2;
			break;
		case KEY_PPAGE:
		case 'u':
			start_y -= text_lines+2;
			break;
		case KEY_HOME:
			start_y = 0;
			break;
		case KEY_END:
			start_y = total_lines-text_lines;
			break;
		case KEY_DOWN:
		case 'j':
			start_y++;
			break;
		case KEY_UP:
		case 'k':
			start_y--;
			break;
		case KEY_LEFT:
		case 'h':
			start_x--;
			break;
		case KEY_RIGHT:
		case 'l':
			start_x++;
			break;
		}
		if (res == 10 || res == 27 || res == 'q' ||
			res == FUNC0(F_HELP) || res == FUNC0(F_BACK) ||
			res == FUNC0(F_EXIT))
			break;
		if (start_y < 0)
			start_y = 0;
		if (start_y >= total_lines-text_lines)
			start_y = total_lines-text_lines;
		if (start_x < 0)
			start_x = 0;
		if (start_x >= total_cols-text_cols)
			start_x = total_cols-text_cols;
	} while (res);

	FUNC3(panel);
	FUNC4(win);
	FUNC18(main_window);
}