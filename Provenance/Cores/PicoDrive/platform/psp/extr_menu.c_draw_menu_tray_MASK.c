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
 char* menuErrorMsg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*) ; 

__attribute__((used)) static void FUNC3(int menu_sel)
{
	int tl_x = 70, tl_y = 90, y;

	FUNC0();

	FUNC2(tl_x, 20, "The unit is about to");
	FUNC2(tl_x, 30, "close the CD tray.");

	y = tl_y;
	FUNC2(tl_x, y,       "Load new CD image");
	FUNC2(tl_x, (y+=10), "Insert nothing");

	// draw cursor
	FUNC2(tl_x - 16, tl_y + menu_sel*10, ">");
	// error
	if (menuErrorMsg[0]) FUNC2(5, 226, menuErrorMsg);
	FUNC1();
}