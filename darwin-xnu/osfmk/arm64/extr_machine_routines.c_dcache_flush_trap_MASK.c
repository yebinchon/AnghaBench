#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int vm_map_size_t ;
typedef  int vm_map_address_t ;
typedef  scalar_t__ vm_address_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ recover; } ;

/* Variables and functions */
 int ARM64_CLINE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MACH_VM_MAX_ADDRESS ; 
 int VM_MAX_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ cache_trap_recover ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(vm_map_address_t start, vm_map_size_t size)
{
	vm_map_address_t end = start + size;
	thread_t thread = FUNC3();
	vm_offset_t old_recover = thread->recover;

	/* Check bounds */
	if (FUNC4(FUNC2())) {
		if (end > MACH_VM_MAX_ADDRESS) {
			FUNC1(thread, end & ((1 << ARM64_CLINE_SHIFT) - 1));
		}
	} else {
		if (end > VM_MAX_ADDRESS) {
			FUNC1(thread, end & ((1 << ARM64_CLINE_SHIFT) - 1));
		}
	}

	if (start > end) {
		FUNC1(thread, start & ((1 << ARM64_CLINE_SHIFT) - 1));
	}

	/* Set recovery function */
	thread->recover = (vm_address_t)cache_trap_recover;

	/*
	 * We're coherent on Apple ARM64 CPUs, so this could be a nop.  However,
	 * if the region given us is bad, it would be good to catch it and
	 * crash, ergo we still do the flush.
	 */
	FUNC0(start, (uint32_t)size);

	/* Restore recovery function */
	thread->recover = old_recover;

	/* Return (caller does exception return) */
}