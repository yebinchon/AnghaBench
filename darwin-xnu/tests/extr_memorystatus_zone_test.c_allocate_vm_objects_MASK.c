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
typedef  scalar_t__ mach_vm_address_t ;

/* Variables and functions */
 int ALLOCATION_SIZE_VM_OBJECT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MADV_FREE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int VM_FLAGS_ANYWHERE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_TAG1 ; 
 int /*<<< orphan*/  VM_TAG2 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

__attribute__((used)) static void FUNC9(void)
{
	uint64_t alloc_size = ALLOCATION_SIZE_VM_OBJECT, i = 0;

	FUNC8("[%d] Allocating VM regions, each of size %lld KB, each backed by a VM object\n", FUNC1(), (alloc_size>>10));
	for (i = 0; ; i++) {
		mach_vm_address_t addr = (mach_vm_address_t)NULL;

		/* Alternate VM tags between consecutive regions to prevent coalescing */
		int flags = FUNC0((i % 2)? VM_TAG1: VM_TAG2) | VM_FLAGS_ANYWHERE;

		if ((FUNC5(FUNC4(), &addr, (mach_vm_size_t)alloc_size, flags)) != KERN_SUCCESS) {
			break;
		}
		/* Touch the region so the VM object can actually be created */
		*((int *)addr) = 0;
		/* OK to free this page. Keeps us from holding a lot of dirty pages */
		FUNC6((void *)addr, (size_t)alloc_size, MADV_FREE);
	}
	FUNC8("[%d] Number of allocations: %lld\n", FUNC1(), i);

	/* Signal to the parent that we're done allocating */
	FUNC3(FUNC2(), SIGUSR1);

	while (1) {
		FUNC7();
	}
}