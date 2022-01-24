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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct lck_mtx_thread_arg {int /*<<< orphan*/ * other_thread; scalar_t__ my_locked; scalar_t__* other_locked; } ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int iterations ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct lck_mtx_thread_arg*,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/  release ; 
 scalar_t__ synch ; 
 scalar_t__ test_mtx_lock_unlock_contended_thread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ wait_barrier ; 

kern_return_t
FUNC10(
	int iter,
	char* buffer,
	int buffer_size)
{
	thread_t thread1, thread2;
	kern_return_t result;
	struct lck_mtx_thread_arg targs[2] = {};
	synch = 0;
	wait_barrier = 0;
	iterations = iter;

	FUNC3();

	targs[0].other_thread = NULL;
        targs[1].other_thread = NULL;

	result = FUNC5((thread_continue_t)test_mtx_lock_unlock_contended_thread, &targs[0], &thread1);
	if (result != KERN_SUCCESS) {
		return 0;
	}

	result = FUNC5((thread_continue_t)test_mtx_lock_unlock_contended_thread, &targs[1], &thread2);
	if (result != KERN_SUCCESS) {
		FUNC9(thread1);
		return 0;
	}

	/* this are t1 args */
	targs[0].my_locked = 0;
	targs[0].other_locked = &targs[1].my_locked;

	FUNC7(&targs[0].other_thread, thread2, release);

	/* this are t2 args */
	targs[1].my_locked = 0;
	targs[1].other_locked = &targs[0].my_locked;

	FUNC7(&targs[1].other_thread, thread1, release);

	while (FUNC6(&wait_barrier, relaxed) != 2) {
		FUNC0((event_t) &wait_barrier, THREAD_UNINT);
		if (FUNC6(&wait_barrier, relaxed) != 2) {
			(void) FUNC8(THREAD_CONTINUE_NULL);
		} else {
			FUNC1(FUNC2(), THREAD_AWAKENED);
		}
	}

	FUNC9(thread1);
	FUNC9(thread2);

	return  FUNC4(buffer, buffer_size);
}