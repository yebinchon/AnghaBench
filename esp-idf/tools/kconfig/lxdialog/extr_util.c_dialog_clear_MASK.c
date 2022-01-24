#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct subtitle_list {char const* text; struct subtitle_list* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  atr; } ;
struct TYPE_4__ {struct subtitle_list* subtitles; int /*<<< orphan*/ * backtitle; TYPE_1__ screen; } ;

/* Variables and functions */
 char ACS_HLINE ; 
 char ACS_RARROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ dlg ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  stdscr ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	int lines, columns;

	lines = FUNC2(stdscr);
	columns = FUNC1(stdscr);

	FUNC0(stdscr, lines, columns, dlg.screen.atr);
	/* Display background title if it exists ... - SLH */
	if (dlg.backtitle != NULL) {
		int i, len = 0, skip = 0;
		struct subtitle_list *pos;

		FUNC7(stdscr, dlg.screen.atr);
		FUNC3(stdscr, 0, 1, (char *)dlg.backtitle);

		for (pos = dlg.subtitles; pos != NULL; pos = pos->next) {
			/* 3 is for the arrow and spaces */
			len += FUNC4(pos->text) + 3;
		}

		FUNC8(stdscr, 1, 1);
		if (len > columns - 2) {
			const char *ellipsis = "[...] ";
			FUNC6(stdscr, ellipsis);
			skip = len - (columns - 2 - FUNC4(ellipsis));
		}

		for (pos = dlg.subtitles; pos != NULL; pos = pos->next) {
			if (skip == 0)
				FUNC5(stdscr, ACS_RARROW);
			else
				skip--;

			if (skip == 0)
				FUNC5(stdscr, ' ');
			else
				skip--;

			if (skip < FUNC4(pos->text)) {
				FUNC6(stdscr, pos->text + skip);
				skip = 0;
			} else
				skip -= FUNC4(pos->text);

			if (skip == 0)
				FUNC5(stdscr, ' ');
			else
				skip--;
		}

		for (i = len + 1; i < columns - 1; i++)
			FUNC5(stdscr, ACS_HLINE);
	}
	FUNC9(stdscr);
}