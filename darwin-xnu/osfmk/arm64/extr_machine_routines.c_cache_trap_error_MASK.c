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
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_BAD_ACCESS ; 
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(thread_t thread, vm_map_address_t fault_addr)
{
	mach_exception_data_type_t exc_data[2];
	arm_saved_state_t *regs = FUNC1(thread);

	FUNC2(regs, fault_addr);

	exc_data[0] = KERN_INVALID_ADDRESS;
	exc_data[1] = fault_addr;

	FUNC0(EXC_BAD_ACCESS, exc_data, 2);
}