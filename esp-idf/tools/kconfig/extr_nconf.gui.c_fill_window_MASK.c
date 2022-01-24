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
 char* FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

void FUNC7(WINDOW *win, const char *text)
{
	int x, y;
	int total_lines = FUNC2(text);
	int i;

	FUNC3(win, y, x);
	/* do not go over end of line */
	total_lines = FUNC4(total_lines, y);
	for (i = 0; i < total_lines; i++) {
		char tmp[x+10];
		const char *line = FUNC0(text, i);
		int len = FUNC1(line);
		FUNC6(tmp, line, FUNC4(len, x));
		tmp[len] = '\0';
		FUNC5(win, i, 0, "%s", tmp);
	}
}