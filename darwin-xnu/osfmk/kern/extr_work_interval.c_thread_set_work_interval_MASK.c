#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct work_interval {int dummy; } ;
struct TYPE_4__ {struct work_interval* th_work_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct work_interval*) ; 

__attribute__((used)) static void
FUNC3(thread_t thread,
                         struct work_interval *work_interval)
{
	FUNC0(thread == FUNC1());

	struct work_interval *old_th_wi = thread->th_work_interval;

	/* transfer +1 ref to thread */
	thread->th_work_interval = work_interval;


	if (old_th_wi != NULL)
		FUNC2(old_th_wi);
}