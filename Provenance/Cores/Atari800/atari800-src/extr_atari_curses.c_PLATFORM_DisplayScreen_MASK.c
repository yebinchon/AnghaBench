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
 int A_REVERSE ; 
#define  CURSES_CENTRAL 132 
#define  CURSES_LEFT 131 
#define  CURSES_RIGHT 130 
#define  CURSES_WIDE_1 129 
#define  CURSES_WIDE_2 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int curses_mode ; 
 int** curses_screen ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	int x;
	int y;
	for (y = 0; y < 24; y++) {
		for (x = 0; x < 40; x++) {
			int ch = curses_screen[y][x];
			switch (curses_mode) {
			default:
			case CURSES_LEFT:
				FUNC1(y, x);
				break;
			case CURSES_CENTRAL:
				FUNC1(y, 20 + x);
				break;
			case CURSES_RIGHT:
				FUNC1(y, 40 + x);
				break;
			case CURSES_WIDE_1:
				FUNC1(y, x + x);
				break;
			case CURSES_WIDE_2:
				FUNC1(y, x + x);
				FUNC0(ch);
				ch = ' ' + (ch & A_REVERSE);
				break;
			}
			FUNC0(ch);
		}
	}
	FUNC2();
}