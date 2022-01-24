#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  mpqueue_head_t ;
struct TYPE_6__ {scalar_t__ deadline; int /*<<< orphan*/  queue; } ;
struct TYPE_8__ {TYPE_1__ rtclock_timer; scalar_t__ cpu_running; } ;
typedef  TYPE_3__ cpu_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  queue; } ;
struct TYPE_9__ {TYPE_2__ rtclock_timer; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  master_cpu ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

mpqueue_head_t *
FUNC3(
	uint64_t		deadline)
{
	cpu_data_t				*cpu_data_ptr = FUNC1();
	mpqueue_head_t		*queue;

	if (cpu_data_ptr->cpu_running) {
		queue = &cpu_data_ptr->rtclock_timer.queue;

		if (deadline < cpu_data_ptr->rtclock_timer.deadline)
			FUNC2(deadline);
	}
	else
		queue = &FUNC0(master_cpu)->rtclock_timer.queue;

	return (queue);
}