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
 int FALSE ; 
 int MAP_ANON ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int SUPERPAGE_SIZE ; 
 int TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_SUPERPAGE_SIZE_2MB ; 
 int FUNC0 (uintptr_t,char*) ; 
 int FUNC1 (uintptr_t) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (uintptr_t,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (uintptr_t,int) ; 
 int FUNC5 (uintptr_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error ; 
 scalar_t__ FUNC6 (void*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

boolean_t
FUNC9() {
	int kr, ret;
	uintptr_t addr = 0;
	int size = SUPERPAGE_SIZE;
	
	addr = (uintptr_t)FUNC6((void*)addr, size, PROT_READ, MAP_ANON | MAP_PRIVATE, VM_FLAGS_SUPERPAGE_SIZE_2MB, 0);
	if (addr == (uintptr_t)MAP_FAILED) {
		FUNC8(error, "mmap()");
		return FALSE;
	}
	if (!(ret = FUNC0(addr, "mach_vm_allocate"))) return ret;
	if (!(ret = FUNC1(addr))) return ret;
	if (!(ret = FUNC5(addr, SUPERPAGE_SIZE, NULL))) return ret;
	if (!(ret = FUNC4(addr, SUPERPAGE_SIZE))) return ret;
	kr = FUNC7((void*)addr, size);
	if (!(ret = FUNC2(kr, "munmap"))) return ret;
	if (!(ret = FUNC3(addr, size, NULL))) return ret;

	return TRUE;
}