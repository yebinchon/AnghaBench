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
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_ANY ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

boolean_t
FUNC7() {
	int kr;
	int ret;
	mach_vm_address_t addr = 0;
	mach_vm_size_t	size = 2*PAGE_SIZE; /* will be rounded up to some superpage size */

	kr = FUNC5(FUNC4(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_ANY);
	if (!(ret = FUNC1(kr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC0(addr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC3(addr, size))) return ret;
	kr = FUNC6(FUNC4(), addr, size);
	if (!(ret = FUNC1(kr, "mach_vm_deallocate"))) return ret;
	if (!(ret = FUNC2(addr, size, NULL))) return ret;
	return TRUE;
}