#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int boolean_t ;
struct TYPE_2__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FUNC_END ; 
 int /*<<< orphan*/  DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_OPT_VMPRIV ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  VM_PAGE_WAIT_BLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  c_vm_page_wait_block ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ secluded_for_apps ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ vm_page_free_count ; 
 scalar_t__ vm_page_free_target ; 
 int /*<<< orphan*/  vm_page_free_wanted ; 
 int /*<<< orphan*/  vm_page_free_wanted_privileged ; 
 int /*<<< orphan*/  vm_page_free_wanted_secluded ; 
 int /*<<< orphan*/  vm_page_queue_free_lock ; 
 scalar_t__ vm_page_secluded_count ; 
 int /*<<< orphan*/  vm_page_wait_block ; 

boolean_t
FUNC10(
	int	interruptible )
{
	/*
	 *	We can't use vm_page_free_reserved to make this
	 *	determination.  Consider: some thread might
	 *	need to allocate two pages.  The first allocation
	 *	succeeds, the second fails.  After the first page is freed,
	 *	a call to vm_page_wait must really block.
	 */
	kern_return_t	wait_result;
	int          	need_wakeup = 0;
	int		is_privileged = FUNC4()->options & TH_OPT_VMPRIV;

	FUNC5(&vm_page_queue_free_lock);

	if (is_privileged && vm_page_free_count) {
		FUNC6(&vm_page_queue_free_lock);
		return TRUE;
	}

	if (vm_page_free_count >= vm_page_free_target) {
		FUNC6(&vm_page_queue_free_lock);
		return TRUE;
	}

	if (is_privileged) {
		if (vm_page_free_wanted_privileged++ == 0)
			need_wakeup = 1;
		wait_result = FUNC1((event_t)&vm_page_free_wanted_privileged, interruptible);
#if CONFIG_SECLUDED_MEMORY
	} else if (secluded_for_apps &&
		   task_can_use_secluded_mem(current_task(), FALSE)) {
#if 00
		/* XXX FBDP: need pageq lock for this... */
		/* XXX FBDP: might wait even if pages available, */
		/* XXX FBDP: hopefully not for too long... */
		if (vm_page_secluded_count > 0) {
			lck_mtx_unlock(&vm_page_queue_free_lock);
			return TRUE;
		}
#endif
		if (vm_page_free_wanted_secluded++ == 0) {
			need_wakeup = 1;
		}
		wait_result = assert_wait(
			(event_t)&vm_page_free_wanted_secluded,
			interruptible);
#endif /* CONFIG_SECLUDED_MEMORY */
	} else {
		if (vm_page_free_wanted++ == 0)
			need_wakeup = 1;
		wait_result = FUNC1((event_t)&vm_page_free_count,
					  interruptible);
	}
	FUNC6(&vm_page_queue_free_lock);
	FUNC2(c_vm_page_wait_block++);

	if (need_wakeup)
		FUNC9((event_t)&vm_page_free_wanted);

	if (wait_result == THREAD_WAITING) {
		FUNC0(vm_page_wait_block, VM_PAGE_WAIT_BLOCK, DBG_FUNC_START,
			       vm_page_free_wanted_privileged,
			       vm_page_free_wanted,
#if CONFIG_SECLUDED_MEMORY
			       vm_page_free_wanted_secluded,
#else /* CONFIG_SECLUDED_MEMORY */
			       0,
#endif /* CONFIG_SECLUDED_MEMORY */
			       0);
		wait_result = FUNC8(THREAD_CONTINUE_NULL);
		FUNC0(vm_page_wait_block,
				   VM_PAGE_WAIT_BLOCK, DBG_FUNC_END, 0, 0, 0, 0);
	}

	return (wait_result == THREAD_AWAKENED);
}