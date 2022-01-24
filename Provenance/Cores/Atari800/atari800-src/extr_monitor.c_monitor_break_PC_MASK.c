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
 int MONITOR_break_addr ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	int addr_valid = FUNC0(&MONITOR_break_addr);
	if (addr_valid)
	{
		if (MONITOR_break_addr >= 0xd000 && MONITOR_break_addr <= 0xd7ff)
			FUNC1("PC breakpoint disabled\n");
		else
			FUNC1("Breakpoint set at PC=%04X\n", MONITOR_break_addr);
	}
	else
	{
		FUNC1("Breakpoint is at PC=%04X\n", MONITOR_break_addr);
	}
}