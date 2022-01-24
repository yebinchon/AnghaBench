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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct lck_mtx_thread_arg {int /*<<< orphan*/ * other_thread; scalar_t__ my_locked; scalar_t__* other_locked; } ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TEST_MTX_LOCK_STATS ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acquire ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ end_loop_time ; 
 scalar_t__ end_loop_time_run ; 
 int iterations ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct lck_mtx_thread_arg*,int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  release ; 
 int FUNC8 (char*,int,char*,...) ; 
 scalar_t__ start_loop_time ; 
 scalar_t__ start_loop_time_run ; 
 scalar_t__ synch ; 
 scalar_t__ test_mtx_lck_unlock_contended_loop_time_thread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ wait_barrier ; 

int
FUNC11(
	int iter,
	char *buffer,
	int buffer_size)
{
	thread_t thread1, thread2;
	kern_return_t result;
	int ret;
	struct lck_mtx_thread_arg targs[2] = {};
	synch = 0;
	wait_barrier = 0;
	iterations = iter;
	uint64_t time, time_run;

	targs[0].other_thread = NULL;
	targs[1].other_thread = NULL;

	result = FUNC4((thread_continue_t)test_mtx_lck_unlock_contended_loop_time_thread, &targs[0], &thread1);
	if (result != KERN_SUCCESS) {
		return 0;
	}

	result = FUNC4((thread_continue_t)test_mtx_lck_unlock_contended_loop_time_thread, &targs[1], &thread2);
	if (result != KERN_SUCCESS) {
		FUNC10(thread1);
		return 0;
	}

	/* this are t1 args */
	targs[0].my_locked = 0;
	targs[0].other_locked = &targs[1].my_locked;

	FUNC6(&targs[0].other_thread, thread2, release);

	/* this are t2 args */
	targs[1].my_locked = 0;
	targs[1].other_locked = &targs[0].my_locked;

	FUNC6(&targs[1].other_thread, thread1, release);

	while (FUNC5(&wait_barrier, acquire) != 2) {
		FUNC1((event_t) &wait_barrier, THREAD_UNINT);
		if (FUNC5(&wait_barrier, acquire) != 2) {
			(void) FUNC9(THREAD_CONTINUE_NULL);
		} else {
			FUNC2(FUNC3(), THREAD_AWAKENED);
		}
	}

	FUNC10(thread1);
	FUNC10(thread2);

	FUNC0(end_loop_time - start_loop_time, &time);
	FUNC0(end_loop_time_run - start_loop_time_run, &time_run);

	ret = FUNC8(buffer, buffer_size, "\n");
	ret += FUNC8(&buffer[ret], buffer_size - ret, "total time %llu ns total run time %llu ns ", time, time_run);
	ret += FUNC7(TEST_MTX_LOCK_STATS, &buffer[ret], buffer_size - ret);
	ret += FUNC8(&buffer[ret], buffer_size - ret, "\n");

	return ret;
}