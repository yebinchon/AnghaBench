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
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(void)
{
	if(FUNC0(CPU_TYPE))
	{
		/* Note: AX and AY are reversed in Motorola's docs */
		uint src = FUNC2();
		uint ea_dst;

		src = (((src << 4) & 0x0f00) | (src & 0x000f)) + FUNC3();
		ea_dst = FUNC1();
		FUNC5(ea_dst, (src >> 8) & 0xff);
		ea_dst = FUNC1();
		FUNC5(ea_dst, src & 0xff);
		return;
	}
	FUNC4();
}