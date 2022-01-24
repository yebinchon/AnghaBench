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
typedef  int mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int PAGE_SIZE ; 
 int SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

boolean_t
FUNC5() {
	mach_vm_address_t addr = 0, addr2;
	mach_vm_size_t	size = SUPERPAGE_SIZE;
	int kr, ret;
	int i;

	kr = FUNC2(FUNC1(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC0(kr, "mach_vm_allocate"))) return ret;

	/* attempt to allocate every sub-page of superpage */
	for (i=0; i<SUPERPAGE_SIZE/PAGE_SIZE; i++) {
		addr2 = addr + i*PAGE_SIZE;
		size = PAGE_SIZE;
		kr = FUNC2(FUNC1(), &addr2, size, 0);
		if ((ret = FUNC0(kr, "mach_vm_allocate"))) {
			FUNC4(error, "could allocate already allocated space, page %d", i);
			FUNC3(FUNC1(), addr, size);
			return FALSE;
		}
	}
	kr = FUNC3(FUNC1(), addr, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate"))) return ret;
	return TRUE;
}