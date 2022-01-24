#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  mpqueue_head_t ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {TYPE_1__ rtclock_timer; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(
	mpqueue_head_t		*queue,
	uint64_t		deadline,
	uint64_t		new_deadline)
{
	if (queue == &FUNC0()->rtclock_timer.queue) {
		if (deadline < new_deadline)
			FUNC1(new_deadline);
	}
}