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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERPAGE_SIZE ; 
 int TRUE ; 
 int VM_FLAGS_ANYWHERE ; 
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC11() {
	mach_vm_address_t addr = 0;
	mach_vm_size_t	size = SUPERPAGE_SIZE;
	int kr, ret;
	pid_t pid;
	
	kr = FUNC7(FUNC6(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
	if (!(ret = FUNC0(kr, "mach_vm_allocate"))) return ret;

	FUNC4(stdout);
	if ((pid=FUNC5())) { /* parent */
		if (!(ret = FUNC2(addr, size))) return ret;
		FUNC10(pid, &ret, 0);
		if (!ret) {
			FUNC9(error, "child could access superpage");
			return ret;
		}
	} else { /* child */
		if (!(ret = FUNC1(addr, size, NULL))) FUNC3(ret);
		FUNC3(TRUE);
	}
	
	kr = FUNC8(FUNC6(), addr, size);
	if (!(ret = FUNC0(kr, "mach_vm_deallocate"))) return ret;
	return TRUE;
}