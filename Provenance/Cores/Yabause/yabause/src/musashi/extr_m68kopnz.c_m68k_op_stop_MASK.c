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
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_STOPPED ; 
 scalar_t__ FLAG_S ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  STOP_LEVEL_STOP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ m68ki_remaining_cycles ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	if(FLAG_S)
	{
		uint new_sr = FUNC0();
		FUNC3();			   /* auto-disable (see m68kcpu.h) */
		CPU_STOPPED |= STOP_LEVEL_STOP;
		FUNC2(new_sr);
		m68ki_remaining_cycles = 0;
		return;
	}
	FUNC1();
}