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
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

boolean_t
FUNC8() {
	int kr;
	int ret;
	mach_vm_address_t addr = 0;
	mach_vm_size_t	size = SUPERPAGE_SIZE;

	kr = FUNC5(FUNC4(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC0(kr, "mach_vm_allocate"))) return ret;

	kr = FUNC7(FUNC3(), FUNC4(), addr, size, VM_PROT_WRITE | VM_PROT_READ);

	if (!FUNC2()) /* may fail as user */
		if (!(ret = FUNC0(kr, "mach_vm_wire"))) return ret;

	if (!(ret = FUNC1(addr, size))) return ret;

	kr = FUNC6(FUNC4(), addr, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate"))) return ret;

	return TRUE;
}