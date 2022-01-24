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
 int /*<<< orphan*/  FIXED_ADDRESS1 ; 
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC7() {
	int kr;
	int ret;
	mach_vm_address_t addr = FIXED_ADDRESS1;
	mach_vm_size_t	size = SUPERPAGE_SIZE;

	kr = FUNC5(FUNC4(), &addr, size, VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC1(kr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC0(addr, FIXED_ADDRESS1, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC3(addr, size))) return ret;
	kr = FUNC6(FUNC4(), addr, size);
	if (!(ret = FUNC1(kr, "mach_vm_deallocate"))) return ret;
	if (!(ret = FUNC2(addr, size, NULL))) return ret;
	return TRUE;
}