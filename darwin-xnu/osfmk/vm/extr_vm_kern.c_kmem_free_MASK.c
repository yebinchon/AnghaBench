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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  KMEM_FREE_CODE ; 
 int /*<<< orphan*/  KMEM_FREE_CODE_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_KUNWIRE ; 
 scalar_t__ VM_MIN_KERNEL_AND_KEXT_ADDRESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(
	vm_map_t	map,
	vm_offset_t	addr,
	vm_size_t	size)
{
	kern_return_t kr;

	FUNC2(addr >= VM_MIN_KERNEL_AND_KEXT_ADDRESS);

	FUNC0(KMEM_FREE_CODE, KMEM_FREE_CODE_2, size, addr);

	if(size == 0) {
#if MACH_ASSERT
		printf("kmem_free called with size==0 for map: %p with addr: 0x%llx\n",map,(uint64_t)addr);
#endif
		return;
	}

	kr = FUNC5(map,
			   FUNC7(addr,
					     FUNC1(map)),
			   FUNC6(addr + size,
					     FUNC1(map)), 
			   VM_MAP_REMOVE_KUNWIRE);
	if (kr != KERN_SUCCESS)
		FUNC3("kmem_free");
}