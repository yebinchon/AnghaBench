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
typedef  TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ suspend_count; scalar_t__ suspend_parked; int /*<<< orphan*/  started; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*) ; 

void
FUNC3(thread_t thread)
{
	FUNC0(thread->suspend_count > 0, "thread %p over-resumed", thread);

	/* fail-safe on non-assert builds */
	if (thread->suspend_count == 0)
		return;

	if (--thread->suspend_count == 0) {
		if (!thread->started) {
			FUNC1(thread);
		} else if (thread->suspend_parked) {
			thread->suspend_parked = FALSE;
			FUNC2(&thread->suspend_count, thread);
		}
	}
}