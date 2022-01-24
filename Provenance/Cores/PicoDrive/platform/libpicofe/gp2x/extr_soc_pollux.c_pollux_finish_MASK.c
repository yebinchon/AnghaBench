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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ battdev ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ memdev ; 
 int* memregl ; 
 scalar_t__ memregs ; 
 scalar_t__ mixerdev ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * saved_video_regs ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	FUNC4();

	FUNC5();

	FUNC3(0x4058, saved_video_regs[0],
		FUNC0(saved_video_regs[0]));
	FUNC3(0x4458, saved_video_regs[1],
		FUNC0(saved_video_regs[1]));
	memregl[0x4058>>2] |= 0x10;
	memregl[0x4458>>2] |= 0x10;

	if (battdev >= 0)
		FUNC1(battdev);
	if (mixerdev >= 0)
		FUNC1(mixerdev);
	FUNC2((void *)memregs, 0x20000);
	FUNC1(memdev);
}