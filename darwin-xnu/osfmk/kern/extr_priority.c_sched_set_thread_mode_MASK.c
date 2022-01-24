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
typedef  int sched_mode_t ;
struct TYPE_4__ {scalar_t__ runq; int sched_mode; } ;

/* Variables and functions */
 scalar_t__ PROCESSOR_NULL ; 
#define  TH_MODE_FIXED 130 
#define  TH_MODE_REALTIME 129 
#define  TH_MODE_TIMESHARE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(thread_t thread, sched_mode_t new_mode)
{
	FUNC0(thread->runq == PROCESSOR_NULL);

	switch (new_mode) {
	case TH_MODE_FIXED:
	case TH_MODE_REALTIME:
	case TH_MODE_TIMESHARE:
		break;

	default:
		FUNC1("unexpected mode: %d", new_mode);
		break;
	}

	thread->sched_mode = new_mode;

	FUNC2(thread);
}