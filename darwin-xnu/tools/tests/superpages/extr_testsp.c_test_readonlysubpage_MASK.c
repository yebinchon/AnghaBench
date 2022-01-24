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
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC7() {
	int kr;
	int ret;
	mach_vm_address_t addr = 0;
	mach_vm_size_t	size = SUPERPAGE_SIZE;

	kr = FUNC4(FUNC3(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC0(kr, "mach_vm_allocate"))) return ret;

	FUNC6(FUNC3(), addr+PAGE_SIZE, PAGE_SIZE, 0, VM_PROT_READ);
	if (!(ret = FUNC0(kr, "mach_vm_protect"))) return ret;

	if (!(ret = FUNC2(addr, size, NULL))) return ret;
	if (!(ret = FUNC1(addr, size))) return ret;

	kr = FUNC5(FUNC3(), addr, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate"))) return ret;

	return TRUE;
}