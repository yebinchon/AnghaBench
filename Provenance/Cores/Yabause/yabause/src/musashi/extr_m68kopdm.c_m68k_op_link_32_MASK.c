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
typedef  scalar_t__ uint ;

/* Variables and functions */
 scalar_t__ AY ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__* REG_A ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(void)
{
	if(FUNC0(CPU_TYPE))
	{
		uint* r_dst = &AY;

		FUNC4(*r_dst);
		*r_dst = REG_A[7];
		REG_A[7] = FUNC1(REG_A[7] + FUNC2());
		return;
	}
	FUNC3();
}