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
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_shared_region_lck_grp ; 
 int /*<<< orphan*/  vm_shared_region_lock ; 
 int /*<<< orphan*/  vm_shared_region_queue ; 

void
FUNC4(void)
{
	FUNC0(
		("shared_region: -> init\n"));

	vm_shared_region_lck_grp = FUNC1("vm shared region",
						      LCK_GRP_ATTR_NULL);
	FUNC2(&vm_shared_region_lock,
		     vm_shared_region_lck_grp,
		     LCK_ATTR_NULL);

	FUNC3(&vm_shared_region_queue);

	FUNC0(
		("shared_region: <- init\n"));
}