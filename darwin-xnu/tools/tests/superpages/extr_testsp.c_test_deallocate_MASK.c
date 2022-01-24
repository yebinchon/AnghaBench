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
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  global_addr ; 
 int /*<<< orphan*/  global_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

boolean_t
FUNC5() {
	mach_vm_size_t	size = SUPERPAGE_SIZE;
	int kr, ret;

	if (!global_addr) {
		FUNC4(error, "skipped deallocation");
		return FALSE;
	}
	kr = FUNC3(FUNC2(), global_addr, global_size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate"))) return ret;
	if (!(ret = FUNC1(global_addr, size, NULL))) return ret;
	return TRUE;
}