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
 int ARM_MAX_ASID ; 
 int MAX_ASID ; 
 scalar_t__ asid_bitmap ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmaps_lock ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 

__attribute__((used)) static void
FUNC4(
	int asid)
{
	/* Don't free up any alias of physical ASID 0. */
	FUNC0((asid % ARM_MAX_ASID) != 0);

	FUNC1(&pmaps_lock);
	FUNC3(asid, (int *) asid_bitmap);

#if __ARM_KERNEL_PROTECT__
	assert((asid | 1) < MAX_ASID);
	assert((asid | 1) != asid);
	setbit(asid | 1, (int *) asid_bitmap);
#endif /* __ARM_KERNEL_PROTECT__ */

	FUNC2(&pmaps_lock);
}