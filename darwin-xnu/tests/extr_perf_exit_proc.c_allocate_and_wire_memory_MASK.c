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
typedef  int /*<<< orphan*/  task_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  host_t ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(mach_vm_size_t size) {
	int err;
	task_t task = FUNC3();
	mach_vm_address_t addr;

	if (size <= 0)
		return 0;

	err = FUNC4(task, &addr, size, VM_FLAGS_ANYWHERE);
	if (err != KERN_SUCCESS) {
		FUNC7("mach_vm_allocate returned non-zero: %s\n", FUNC1(err));
		return err;
	}
	err = FUNC5(task, addr, size, 0, VM_PROT_READ | VM_PROT_WRITE);;
	if (err != KERN_SUCCESS) {
		FUNC7("mach_vm_protect returned non-zero: %s\n", FUNC1(err));
		return err;
	}
	host_t host_priv_port;
	err = FUNC0(FUNC2(), &host_priv_port);
	if (err != KERN_SUCCESS) {
		FUNC7("host_get_host_priv_port retruned non-zero: %s\n", FUNC1(err));
		return err;
	}
	err = FUNC6(host_priv_port, task, addr, size, VM_PROT_READ | VM_PROT_WRITE);
	if (err != KERN_SUCCESS) {
		FUNC7("mach_vm_wire returned non-zero: %s\n", FUNC1(err));
		return err;
	}

	return 0;
}