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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

kern_return_t
FUNC5(
	int cpu)
{
	kern_return_t		ret;

	if (cpu == FUNC1()) {
		FUNC0();
		return KERN_SUCCESS;
	}

	/*
	 * Try to bring the CPU back online without a reset.
	 * If the fast restart doesn't succeed, fall back to
	 * the slow way.
	 */
	ret = FUNC3(cpu);
	if (ret != KERN_SUCCESS) {
		/*
		 * Should call out through PE.
		 * But take the shortcut here.
		 */
		ret = FUNC2(cpu);
	}

	if (ret != KERN_SUCCESS)
		FUNC4("cpu: cpu_start(%d) returning failure!\n", cpu);

	return(ret);
}