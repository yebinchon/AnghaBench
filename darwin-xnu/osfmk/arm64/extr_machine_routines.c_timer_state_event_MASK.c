#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_8__ {int /*<<< orphan*/ * thread_timer; int /*<<< orphan*/ * current_state; int /*<<< orphan*/  user_state; int /*<<< orphan*/  system_state; } ;
typedef  TYPE_3__ processor_data_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {TYPE_1__* cpu_processor; } ;
struct TYPE_7__ {int /*<<< orphan*/  user_timer; int /*<<< orphan*/  system_timer; int /*<<< orphan*/  precise_user_kernel_time; } ;
struct TYPE_6__ {TYPE_3__ processor_data; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(boolean_t switch_to_kernel)
{
	thread_t thread = FUNC0();
	if (!thread->precise_user_kernel_time) return;

	processor_data_t *pd = &FUNC1()->cpu_processor->processor_data;
	uint64_t now = FUNC2();

	FUNC4(pd->current_state, now);
	pd->current_state = (switch_to_kernel) ? &pd->system_state : &pd->user_state;
	FUNC3(pd->current_state, now);

	FUNC4(pd->thread_timer, now);
	pd->thread_timer = (switch_to_kernel) ? &thread->system_timer : &thread->user_timer;
	FUNC3(pd->thread_timer, now);
}