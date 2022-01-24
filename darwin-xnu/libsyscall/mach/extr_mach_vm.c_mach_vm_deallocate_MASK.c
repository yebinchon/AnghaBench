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
typedef  scalar_t__ mach_vm_address_t ;
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ MACH_SEND_INVALID_DEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,uintptr_t,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stack_logging_type_vm_deallocate ; 

kern_return_t
FUNC3(
	mach_port_name_t target,
	mach_vm_address_t address,
	mach_vm_size_t size)
{
	kern_return_t rv;

	if (&__syscall_logger) {
		FUNC0(stack_logging_type_vm_deallocate, (uintptr_t)target, (uintptr_t)address, (uintptr_t)size, 0, 0);
	}

	rv = FUNC2(target, address, size);

	if (rv == MACH_SEND_INVALID_DEST)
		rv = FUNC1(target, address, size);

	return (rv);
}