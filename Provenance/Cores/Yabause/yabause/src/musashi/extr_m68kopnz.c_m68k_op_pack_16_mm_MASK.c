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
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(void)
{
	if(FUNC0(CPU_TYPE))
	{
		/* Note: AX and AY are reversed in Motorola's docs */
		uint ea_src = FUNC2();
		uint src = FUNC5(ea_src);
		ea_src = FUNC2();
		src = ((src << 8) | FUNC5(ea_src)) + FUNC3();

		FUNC6(FUNC1(), ((src >> 4) & 0x00f0) | (src & 0x000f));
		return;
	}
	FUNC4();
}