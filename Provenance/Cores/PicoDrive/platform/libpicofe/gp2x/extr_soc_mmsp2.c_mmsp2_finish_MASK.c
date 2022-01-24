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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ cpuclk_was_changed ; 
 scalar_t__ gamma_was_changed ; 
 scalar_t__ memdev ; 
 int /*<<< orphan*/ * memregs ; 
 scalar_t__ mixerdev ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  reg0910 ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ touchdev ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	FUNC3(1, 3);
	FUNC2(1);

	FUNC5();
	if (gamma_was_changed)
		FUNC4(100, 0);
	FUNC6();
	if (cpuclk_was_changed)
		memregs[0x910>>1] = reg0910;

	FUNC1((void *)memregs, 0x10000);
	FUNC0(memdev);
	if (touchdev >= 0)
		FUNC0(touchdev);
	if (mixerdev >= 0)
		FUNC0(mixerdev);
}