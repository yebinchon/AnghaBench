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
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	if(FUNC0(CPU_TYPE))
	{
		uint offset = FUNC1();
		FUNC5();			   /* auto-disable (see m68kcpu.h) */
		FUNC4(REG_PC);
		REG_PC -= 4;
		FUNC2(offset);
		return;
	}
	FUNC3();
}