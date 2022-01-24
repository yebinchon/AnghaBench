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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

void
FUNC3(uint64_t interval,
                    uint64_t deadline)
{
#pragma unused(interval)
	uint64_t now;

	do {
#if	__ARM_ENABLE_WFE_
#if __arm64__
		if (arm64_wfe_allowed())
#endif /* __arm64__ */
		{
			__builtin_arm_wfe();
		}
#endif /* __ARM_ENABLE_WFE_ */

		now = FUNC2();
	} while (now < deadline);
}