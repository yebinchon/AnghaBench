#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_2__* thread_call_t ;
typedef  int /*<<< orphan*/  thread_call_data_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  q_link; } ;
struct TYPE_5__ {TYPE_1__ tc_call; } ;

/* Variables and functions */
 scalar_t__ BASEPRI_PREEMPT_HIGH ; 
 int /*<<< orphan*/  FALSE ; 
 size_t INTERNAL_CALL_COUNT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int SYNC_POLICY_DISABLE_IRQ ; 
 int SYNC_POLICY_FIFO ; 
 int /*<<< orphan*/  THREAD_CALL_DEALLOC_INTERVAL_NS ; 
 size_t THREAD_CALL_INDEX_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  daemon_waitq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* internal_call_storage ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ thread_call_daemon ; 
 int /*<<< orphan*/  thread_call_daemon_awake ; 
 int /*<<< orphan*/  thread_call_dealloc_interval_abs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * thread_call_groups ; 
 int /*<<< orphan*/  thread_call_internal_queue ; 
 int /*<<< orphan*/  thread_call_internal_queue_count ; 
 int /*<<< orphan*/  thread_call_lck_grp ; 
 int /*<<< orphan*/  thread_call_lock_data ; 
 int /*<<< orphan*/  thread_call_zone ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(void)
{
	int tc_size = sizeof (thread_call_data_t);
	thread_call_zone = FUNC12(tc_size, 4096 * tc_size, 16 * tc_size, "thread_call");
	FUNC13(thread_call_zone, Z_CALLERACCT, FALSE);
	FUNC13(thread_call_zone, Z_NOENCRYPT, TRUE);

	FUNC4(&thread_call_lck_grp, "thread_call", LCK_GRP_ATTR_NULL);
	FUNC5(&thread_call_lock_data, &thread_call_lck_grp, LCK_ATTR_NULL);

	FUNC6(0, THREAD_CALL_DEALLOC_INTERVAL_NS, &thread_call_dealloc_interval_abs);
	FUNC11(&daemon_waitq, SYNC_POLICY_DISABLE_IRQ | SYNC_POLICY_FIFO);

	for (uint32_t i = 0; i < THREAD_CALL_INDEX_MAX; i++)
		FUNC9(&thread_call_groups[i]);

	spl_t s = FUNC0();

	FUNC8(&thread_call_internal_queue);
	for (
			thread_call_t call = internal_call_storage;
			call < &internal_call_storage[INTERNAL_CALL_COUNT];
			call++) {

		FUNC2(&thread_call_internal_queue, &call->tc_call.q_link);
		thread_call_internal_queue_count++;
	}

	thread_call_daemon_awake = TRUE;

	FUNC1(s);

	thread_t thread;
	kern_return_t result;

	result = FUNC3((thread_continue_t)thread_call_daemon,
	                                      NULL, BASEPRI_PREEMPT_HIGH + 1, &thread);
	if (result != KERN_SUCCESS)
		FUNC7("thread_call_initialize");

	FUNC10(thread);
}