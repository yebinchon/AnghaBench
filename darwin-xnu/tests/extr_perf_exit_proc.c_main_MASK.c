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
typedef  scalar_t__ mach_vm_size_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC3(int argc, char *argv[]) {
	int nthreads = 0;
	int err;
	mach_vm_size_t wired_mem = 0;

	if (argc > 1) {
		nthreads = (int)FUNC2(argv[1], NULL, 10);
	}
	if (argc > 2) {
		wired_mem = (mach_vm_size_t)FUNC2(argv[2], NULL, 10);
	}
	
	err = FUNC0(wired_mem);
	if (err) {
		return err;
	}

	err = FUNC1(nthreads);
	if (err) {
		return err;
	}

	return 0;
}