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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TASK_POLICY_DISABLE ; 
 int /*<<< orphan*/  TASK_POLICY_ENABLE ; 
 int /*<<< orphan*/  TASK_POLICY_INTERNAL ; 
 int /*<<< orphan*/  TASK_POLICY_IO ; 
 int /*<<< orphan*/  TASK_POLICY_PASSIVE_IO ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_COMPRESSOR_TIER0 ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_COMPRESSOR_TIER1 ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_COMPRESSOR_TIER2 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_SWAPOUT_LIMIT_T0 ; 
 int /*<<< orphan*/  VM_SWAPOUT_LIMIT_T0P ; 
 int /*<<< orphan*/  VM_SWAPOUT_LIMIT_T1P ; 
 int /*<<< orphan*/  VM_SWAPOUT_LIMIT_T2P ; 
#define  VM_SWAPOUT_START 132 
#define  VM_SWAPOUT_T0 131 
#define  VM_SWAPOUT_T0_PASSIVE 130 
#define  VM_SWAPOUT_T1_PASSIVE 129 
#define  VM_SWAPOUT_T2_PASSIVE 128 
 int /*<<< orphan*/  hibernate_flushing ; 
 int /*<<< orphan*/  kernel_task ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swapout_target_age ; 
 int /*<<< orphan*/  vm_swapout_limit ; 
 int vm_swapout_state ; 
 int /*<<< orphan*/  vm_swapout_thread_id ; 
 int /*<<< orphan*/  vm_swapper_entered_T0 ; 
 int /*<<< orphan*/  vm_swapper_entered_T0P ; 
 int /*<<< orphan*/  vm_swapper_entered_T1P ; 
 int /*<<< orphan*/  vm_swapper_entered_T2P ; 
 int /*<<< orphan*/  vm_swapper_throttle ; 

__attribute__((used)) static void
FUNC5(void)
{

	switch(vm_swapout_state) {

	case VM_SWAPOUT_START:
	  
		vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
		vm_swapper_entered_T2P++;

		FUNC4(kernel_task, vm_swapout_thread_id,
		                                TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
		FUNC4(kernel_task, vm_swapout_thread_id,
						TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
		vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
		vm_swapout_state = VM_SWAPOUT_T2_PASSIVE;

		break;

	case VM_SWAPOUT_T2_PASSIVE:

		if (FUNC3()) {
			vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER0;
			vm_swapper_entered_T0P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
			vm_swapout_state = VM_SWAPOUT_T0_PASSIVE;

			break;
		}
		if (swapout_target_age || hibernate_flushing == TRUE) {
			vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER1;
			vm_swapper_entered_T1P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T1P;
			vm_swapout_state = VM_SWAPOUT_T1_PASSIVE;
		}
		break;

	case VM_SWAPOUT_T1_PASSIVE:

		if (FUNC3()) {
			vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER0;
			vm_swapper_entered_T0P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
			vm_swapout_state = VM_SWAPOUT_T0_PASSIVE;

			break;
		}
		if (swapout_target_age == 0 && hibernate_flushing == FALSE) {

		        vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
			vm_swapper_entered_T2P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
			vm_swapout_state = VM_SWAPOUT_T2_PASSIVE;
		}
	        break;

	case VM_SWAPOUT_T0_PASSIVE:

	        if (FUNC2()) {
			vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
			vm_swapper_entered_T2P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
			vm_swapout_state = VM_SWAPOUT_T2_PASSIVE;

			break;
		}
		if (FUNC1()) {
		        vm_swapper_entered_T0++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_DISABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T0;
			vm_swapout_state = VM_SWAPOUT_T0;
		}
		break;

	case VM_SWAPOUT_T0:

		if (FUNC0()) {
		        vm_swapper_entered_T0P++;

			FUNC4(kernel_task, vm_swapout_thread_id,
							TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
			vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
			vm_swapout_state = VM_SWAPOUT_T0_PASSIVE;
		}
		break;
	}
}