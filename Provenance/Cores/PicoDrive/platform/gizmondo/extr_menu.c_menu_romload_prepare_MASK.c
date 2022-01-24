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
 int /*<<< orphan*/  PicoCartLoadProgressCB ; 
 int /*<<< orphan*/  load_progress_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  menu_screen ; 
 int /*<<< orphan*/  rom_loaded ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char const*,int,int) ; 
 int FUNC5 (char const*) ; 

void FUNC6(const char *rom_name)
{
	const char *p = rom_name + FUNC5(rom_name);
	while (p > rom_name && *p != '/') p--;

	if (!rom_loaded)
		FUNC0(menu_screen, 0, 321*240*2);
	FUNC1(1);

	FUNC3(1, 1, "Loading", 0xffff);
	FUNC4(1, 10, p, 0xffff, 53);
	FUNC2();
	PicoCartLoadProgressCB = load_progress_cb;
}