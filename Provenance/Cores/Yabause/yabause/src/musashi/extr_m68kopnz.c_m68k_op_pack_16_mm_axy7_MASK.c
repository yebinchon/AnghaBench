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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(void)
{
	if(FUNC0(CPU_TYPE))
	{
		uint ea_src = FUNC1();
		uint src = FUNC4(ea_src);
		ea_src = FUNC1();
		src = ((src << 8) | FUNC4(ea_src)) + FUNC2();

		FUNC5(FUNC1(), ((src >> 4) & 0x00f0) | (src & 0x000f));
		return;
	}
	FUNC3();
}