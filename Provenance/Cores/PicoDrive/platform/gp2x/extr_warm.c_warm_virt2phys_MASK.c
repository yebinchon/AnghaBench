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
 int /*<<< orphan*/  WARMC_VIRT2PHYS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  warm_fd ; 

unsigned long FUNC2(const void *ptr)
{
	unsigned long ptrio;
	int ret;

	ptrio = (unsigned long)ptr;
	ret = FUNC0(warm_fd, WARMC_VIRT2PHYS, &ptrio);
	if (ret != 0) {
		FUNC1("WARMC_VIRT2PHYS failed");
		return (unsigned long)-1;
	}

	return ptrio;
}