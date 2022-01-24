#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * thread_t ;
typedef  scalar_t__ task_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  coalition_t ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_9__ {int p_flag; int /*<<< orphan*/  p_stat; int /*<<< orphan*/  p_memstat_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int P_LP64 ; 
 int /*<<< orphan*/  P_MEMSTAT_INTERNAL ; 
 int /*<<< orphan*/  SRUN ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*,int,int const,int const,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int const FUNC9 (scalar_t__) ; 

thread_t
FUNC10(task_t parent_task, coalition_t *parent_coalitions, proc_t parent_proc, int inherit_memory, int memstat_internal)
{
#if !CONFIG_MEMORYSTATUS
#pragma unused(memstat_internal)
#endif
	task_t child_task;
	proc_t child_proc;
	thread_t child_thread = NULL;

	if ((child_proc = FUNC3(parent_proc)) == NULL) {
		/* Failed to allocate new process */
		goto bad;
	}

	/*
	 * In the case where the parent_task is TASK_NULL (during the init path)
	 * we make the assumption that the register size will be the same as the
	 * address space size since there's no way to determine the possible
	 * register size until an image is exec'd.
	 *
	 * The only architecture that has different address space and register sizes
	 * (arm64_32) isn't being used within kernel-space, so the above assumption
	 * always holds true for the init path.
	 */
	const int parent_64bit_addr = parent_proc->p_flag & P_LP64;
	const int parent_64bit_data = (parent_task == TASK_NULL) ? parent_64bit_addr : FUNC9(parent_task);

	child_thread = FUNC2(parent_task,
									 parent_coalitions,
									 child_proc,
									 inherit_memory,
									 parent_64bit_addr,
									 parent_64bit_data,
									 FALSE);

	if (child_thread == NULL) {
		/*
		 * Failed to create thread; now we must deconstruct the new
		 * process previously obtained from forkproc().
		 */
		FUNC4(child_proc);
		goto bad;
	}

	child_task = FUNC5(child_thread);
	if (parent_64bit_addr) {
		FUNC1(P_LP64, (UInt32 *)&child_proc->p_flag);
	} else {
		FUNC0(~((uint32_t)P_LP64), (UInt32 *)&child_proc->p_flag);
	}

#if CONFIG_MEMORYSTATUS
	if (memstat_internal) {
		proc_list_lock();
		child_proc->p_memstat_state |= P_MEMSTAT_INTERNAL;
		proc_list_unlock();
	}
#endif

	/* make child visible */
	FUNC6(parent_proc, child_proc);

	/*
	 * Make child runnable, set start time.
	 */
	child_proc->p_stat = SRUN;
bad:
	return(child_thread);
}