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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIXED_ADDRESS2 ; 
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

boolean_t
FUNC4() {
	int kr;
	int ret;
	mach_vm_address_t addr = FIXED_ADDRESS2;
	mach_vm_size_t	size = SUPERPAGE_SIZE;
	
	kr = FUNC2(FUNC1(), &addr, size, VM_FLAGS_SUPERPAGE_SIZE_2MB);
	/* is supposed to fail */
	if ((ret = FUNC0(kr, "mach_vm_allocate"))) {
		FUNC3(error, "mach_vm_allocate() should have failed");
		return FALSE;
	}
	return TRUE;
}