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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;

/* Variables and functions */
 int ALLOCATION_SIZE_VM_REGION ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int VM_FLAGS_ANYWHERE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_TAG1 ; 
 int /*<<< orphan*/  VM_TAG2 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

__attribute__((used)) static void FUNC8(void)
{
	uint64_t alloc_size = ALLOCATION_SIZE_VM_REGION, i = 0;

	FUNC7("[%d] Allocating VM regions, each of size %lld KB\n", FUNC1(), (alloc_size>>10));
	for (i = 0; ; i++) {
		mach_vm_address_t addr = (mach_vm_address_t)NULL;

		/* Alternate VM tags between consecutive regions to prevent coalescing */
		int flags = FUNC0((i % 2)? VM_TAG1: VM_TAG2) | VM_FLAGS_ANYWHERE;

		if ((FUNC5(FUNC4(), &addr, (mach_vm_size_t)alloc_size, flags)) != KERN_SUCCESS) {
			break;
		}
	}
	FUNC7("[%d] Number of allocations: %lld\n", FUNC1(), i);

	/* Signal to the parent that we're done allocating */
	FUNC3(FUNC2(), SIGUSR1);

	while (1) {
		FUNC6();
	}
}