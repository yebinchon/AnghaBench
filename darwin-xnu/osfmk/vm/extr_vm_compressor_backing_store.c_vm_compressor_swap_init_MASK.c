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
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct TYPE_5__ {int /*<<< orphan*/  thread_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASEPRI_VM ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_POLICY_ENABLE ; 
 int /*<<< orphan*/  TASK_POLICY_INTERNAL ; 
 int /*<<< orphan*/  TASK_POLICY_IO ; 
 int /*<<< orphan*/  TASK_POLICY_PASSIVE_IO ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_COMPRESSOR_TIER2 ; 
 int /*<<< orphan*/  VM_MAX_SWAP_FILE_NUM ; 
 int c_overage_swapped_limit ; 
 int /*<<< orphan*/  kernel_task ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swf_global_queue ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  vm_num_swap_files_config ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  vm_swap_data_lock_attr ; 
 int /*<<< orphan*/  vm_swap_data_lock_ext ; 
 int /*<<< orphan*/  vm_swap_data_lock_grp ; 
 int /*<<< orphan*/  vm_swap_data_lock_grp_attr ; 
 scalar_t__ vm_swapfile_create_thread ; 
 scalar_t__ vm_swapfile_gc_thread ; 
 scalar_t__ vm_swapout_thread ; 
 int /*<<< orphan*/  vm_swapout_thread_id ; 

void
FUNC11()
{
	thread_t	thread = NULL;

	FUNC2(&vm_swap_data_lock_grp_attr);
	FUNC3(&vm_swap_data_lock_grp,
		     "vm_swap_data",
		     &vm_swap_data_lock_grp_attr);
	FUNC1(&vm_swap_data_lock_attr);
	FUNC4(&vm_swap_data_lock,
			 &vm_swap_data_lock_ext,
			 &vm_swap_data_lock_grp,
			 &vm_swap_data_lock_attr);

	FUNC8(&swf_global_queue);

	
	if (FUNC0((thread_continue_t)vm_swapout_thread, NULL,
					 BASEPRI_VM, &thread) != KERN_SUCCESS) {
		FUNC5("vm_swapout_thread: create failed");
	}
	FUNC10(thread, "VM_swapout");
	vm_swapout_thread_id = thread->thread_id;

	FUNC9(thread);

	if (FUNC0((thread_continue_t)vm_swapfile_create_thread, NULL,
				 BASEPRI_VM, &thread) != KERN_SUCCESS) {
		FUNC5("vm_swapfile_create_thread: create failed");
	}

	FUNC10(thread, "VM_swapfile_create");
	FUNC9(thread);

	if (FUNC0((thread_continue_t)vm_swapfile_gc_thread, NULL,
				 BASEPRI_VM, &thread) != KERN_SUCCESS) {
		FUNC5("vm_swapfile_gc_thread: create failed");
	}
	FUNC10(thread, "VM_swapfile_gc");
	FUNC9(thread);

	FUNC7(kernel_task, thread->thread_id,
	                                TASK_POLICY_INTERNAL, TASK_POLICY_IO, THROTTLE_LEVEL_COMPRESSOR_TIER2);
	FUNC7(kernel_task, thread->thread_id,
	                                TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);

#if CONFIG_EMBEDDED
	/*
	 * dummy value until the swap file gets created 
	 * when we drive the first c_segment_t to the 
	 * swapout queue... at that time we will
	 * know the true size we have to work with
	 */
	c_overage_swapped_limit = 16;
#endif

	vm_num_swap_files_config = VM_MAX_SWAP_FILE_NUM;

	FUNC6("VM Swap Subsystem is ON\n");
}