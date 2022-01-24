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
typedef  int /*<<< orphan*/  task_t ;
struct uthread {scalar_t__ uu_workq_stackaddr; int /*<<< orphan*/  uu_workq_thport; int /*<<< orphan*/  uu_workq_pri; int /*<<< orphan*/  uu_workq_flags; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  THREAD_QOS_LEGACY ; 
 int THREAD_TAG_PTHREAD ; 
 int THREAD_TAG_WORKQUEUE ; 
 int /*<<< orphan*/  UT_WORKQ_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uthread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uthread*) ; 

event_t
FUNC8(task_t task, thread_t th)
{
	struct uthread *uth = FUNC2(th);

	uth->uu_workq_flags = UT_WORKQ_NEW;
	uth->uu_workq_pri = FUNC0(THREAD_QOS_LEGACY);
	uth->uu_workq_thport = MACH_PORT_NULL;
	uth->uu_workq_stackaddr = 0;

	FUNC5(th, THREAD_TAG_PTHREAD | THREAD_TAG_WORKQUEUE);
	FUNC4(th, THREAD_QOS_LEGACY);

	FUNC6(FUNC3(FUNC1(task)));
	return FUNC7(uth);
}