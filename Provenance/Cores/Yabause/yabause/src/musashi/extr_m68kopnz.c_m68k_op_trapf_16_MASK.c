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
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	if(FUNC0(CPU_TYPE))
	{
		REG_PC += 2;
		return;
	}
	FUNC1();
}