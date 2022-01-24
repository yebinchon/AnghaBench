#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_3__ {int /*<<< orphan*/  runq_links; int /*<<< orphan*/  thread_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE_DATA_THREAD_TERMINATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_terminate_lock ; 
 int /*<<< orphan*/  thread_terminate_queue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(
	thread_t		thread)
{
	FUNC0(TRACE_DATA_THREAD_TERMINATE, thread->thread_id);

	FUNC2(&thread_terminate_lock);
	FUNC1(&thread_terminate_queue, &thread->runq_links);
	FUNC3(&thread_terminate_lock);

	FUNC4((event_t)&thread_terminate_queue);
}