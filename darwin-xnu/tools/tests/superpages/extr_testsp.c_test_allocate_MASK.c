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
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (scalar_t__,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ global_addr ; 
 int /*<<< orphan*/  global_size ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 

boolean_t
FUNC6() {
	int kr, ret;

	global_addr = 0;
	global_size = SUPERPAGE_SIZE;
	
	kr = FUNC5(FUNC4(), &global_addr, global_size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC2(kr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC0(global_addr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC1(global_addr))) return ret;
	if (!(ret = FUNC3(global_addr, global_size))) return ret;

	return TRUE;
}