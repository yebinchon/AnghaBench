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
 int DX ; 
 int DY ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	if(FUNC0(CPU_TYPE))
	{
		/* Note: DX and DY are reversed in Motorola's docs */
		uint src = DY + FUNC2();
		uint* r_dst = &DX;

		*r_dst = FUNC1(*r_dst) | ((src >> 4) & 0x00f0) | (src & 0x000f);
		return;
	}
	FUNC3();
}