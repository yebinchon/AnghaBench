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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,uintptr_t,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 
 int stack_logging_type_mapped_file_or_shared_mem ; 
 int stack_logging_type_vm_allocate ; 

kern_return_t
FUNC3(
	mach_port_name_t target,
	mach_vm_address_t address,
	mach_vm_size_t size,
	vm_offset_t *data,
	mach_msg_type_number_t *dataCnt)
{
	kern_return_t rv;

	rv = FUNC1(target, address, size, data, dataCnt);

	if (&__syscall_logger) {
		int eventTypeFlags = stack_logging_type_vm_allocate | stack_logging_type_mapped_file_or_shared_mem;
		// The target argument is the remote task from which data is being read,
		// so pass mach_task_self() as the destination task receiving the allocation.
		FUNC0(eventTypeFlags, (uintptr_t)FUNC2(), (uintptr_t)*dataCnt, 0, *data, 0);
	}

	return (rv);
}