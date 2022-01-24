#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct work_interval {scalar_t__ wi_id; scalar_t__ wi_creator_uniqueid; scalar_t__ wi_creator_pidversion; } ;
struct kern_work_interval_args {scalar_t__ work_interval_id; int /*<<< orphan*/  urgency; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {struct work_interval* th_work_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct kern_work_interval_args*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC9(thread_t thread, struct kern_work_interval_args* kwi_args)
{
	FUNC0(thread == FUNC2());
	FUNC0(kwi_args->work_interval_id != 0);

	struct work_interval *work_interval = thread->th_work_interval;

	if (work_interval == NULL ||
	    work_interval->wi_id != kwi_args->work_interval_id) {
		/* This thread must have adopted the work interval to be able to notify */
		return (KERN_INVALID_ARGUMENT);
	}

	task_t notifying_task = FUNC1();

	if (work_interval->wi_creator_uniqueid   != FUNC3(notifying_task) ||
	    work_interval->wi_creator_pidversion != FUNC4(notifying_task)) {
		/* Only the creating task can do a notify */
		return (KERN_INVALID_ARGUMENT);
	}

	spl_t s = FUNC6();


	uint64_t urgency_param1, urgency_param2;
	kwi_args->urgency = FUNC8(thread, &urgency_param1, &urgency_param2);

	FUNC7(s);

	/* called without interrupts disabled */
	FUNC5(thread, kwi_args);

	return (KERN_SUCCESS);
}