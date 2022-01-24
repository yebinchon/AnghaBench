#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  scalar_t__ vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_fault_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ shadow_severed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VMF_CHECK_ZFDELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_FAULT_INTERRUPTED ; 
 int /*<<< orphan*/  VM_FAULT_MEMORY_ERROR ; 
 int /*<<< orphan*/  VM_FAULT_MEMORY_SHORTAGE ; 
 int /*<<< orphan*/  VM_FAULT_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmf_check_zfdelay ; 

__attribute__((used)) static vm_fault_return_t
FUNC8(vm_object_t object, vm_page_t m, vm_page_t first_m, wait_interrupt_t interruptible_state, boolean_t page_throttle)
{
	int throttle_delay;

        if (object->shadow_severed ||
	    FUNC1(object)) {
	        /*
		 * Either:
		 * 1. the shadow chain was severed,
		 * 2. the purgeable object is volatile or empty and is marked
		 *    to fault on access while volatile.
		 * Just have to return an error at this point
		 */
	        if (m != VM_PAGE_NULL)
		        FUNC2(m);
		FUNC6(object, first_m);

		FUNC5(interruptible_state);

		return (VM_FAULT_MEMORY_ERROR);
	}
	if (page_throttle == TRUE) {
		if ((throttle_delay = FUNC7(FALSE))) {
			/*
			 * we're throttling zero-fills...
			 * treat this as if we couldn't grab a page
			 */
			if (m != VM_PAGE_NULL)
				FUNC2(m);
			FUNC6(object, first_m);

			FUNC0(vmf_check_zfdelay, VMF_CHECK_ZFDELAY, DBG_FUNC_NONE, throttle_delay, 0, 0, 0);

			FUNC4(throttle_delay);

			if (FUNC3()) {
				FUNC5(interruptible_state);
				return VM_FAULT_INTERRUPTED;
			}
			FUNC5(interruptible_state);

			return (VM_FAULT_MEMORY_SHORTAGE);
		}
	}
	return (VM_FAULT_SUCCESS);
}