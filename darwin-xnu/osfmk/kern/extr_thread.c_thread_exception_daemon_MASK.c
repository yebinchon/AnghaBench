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
typedef  int /*<<< orphan*/  task_t ;
struct thread_exception_elt {int /*<<< orphan*/  exception_thread; int /*<<< orphan*/  exception_task; int /*<<< orphan*/  exception_type; } ;
typedef  int /*<<< orphan*/  exception_type_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_exception_elt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_exception_lock ; 
 int /*<<< orphan*/  thread_exception_queue ; 

__attribute__((used)) static void
FUNC13(void)
{
	struct thread_exception_elt *elt;
	task_t task;
	thread_t thread;
	exception_type_t etype;

	FUNC4(&thread_exception_lock);
	while ((elt = (struct thread_exception_elt *)FUNC2(&thread_exception_queue)) != NULL) {
		FUNC5(&thread_exception_lock);

		etype = elt->exception_type;
		task = elt->exception_task;
		thread = elt->exception_thread;
		FUNC0(thread);

		FUNC3(elt, sizeof (*elt));

		/* wait for all the threads in the task to terminate */
		FUNC8(task);
		FUNC10(task);
		FUNC9(task);

		/* Consumes the task ref returned by task_generate_corpse_internal */
		FUNC6(task);
		/* Consumes the thread ref returned by task_generate_corpse_internal */
		FUNC12(thread);

		/* Deliver the notification, also clears the corpse. */
		FUNC7(task, thread, etype, 0);

		FUNC4(&thread_exception_lock);
	}

	FUNC1((event_t)&thread_exception_queue, THREAD_UNINT);
	FUNC5(&thread_exception_lock);

	FUNC11((thread_continue_t)thread_exception_daemon);
}