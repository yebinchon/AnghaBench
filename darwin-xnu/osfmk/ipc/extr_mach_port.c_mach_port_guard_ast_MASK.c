#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* task_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
struct TYPE_8__ {unsigned int task_exc_guard; } ;
struct TYPE_7__ {TYPE_2__* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_GUARD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int*) ; 
 int TASK_EXC_GUARD_MP_CORPSE ; 
 unsigned int TASK_EXC_GUARD_MP_DELIVER ; 
 int TASK_EXC_GUARD_MP_FATAL ; 
 unsigned int TASK_EXC_GUARD_MP_ONCE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 () ; 
#define  kGUARD_EXC_DESTROY 132 
#define  kGUARD_EXC_INCORRECT_GUARD 131 
#define  kGUARD_EXC_MOD_REFS 130 
#define  kGUARD_EXC_SET_CONTEXT 129 
#define  kGUARD_EXC_UNGUARDED 128 
 TYPE_2__* kernel_task ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(thread_t t,
	mach_exception_data_type_t code, mach_exception_data_type_t subcode)
{
	unsigned int reason = FUNC0(code);
	task_t task = t->task;
	unsigned int behavior = task->task_exc_guard;
	FUNC2(task == FUNC3());
	FUNC2(task != kernel_task);

	switch (reason) {
		/*
		 * Fatal Mach port guards - always delivered synchronously
		 */
	case kGUARD_EXC_DESTROY:
	case kGUARD_EXC_MOD_REFS:
	case kGUARD_EXC_SET_CONTEXT:
	case kGUARD_EXC_UNGUARDED:
	case kGUARD_EXC_INCORRECT_GUARD:
		FUNC5(EXC_GUARD, code, subcode);
		FUNC4(task);
		break;

	default:
		/*
		 * Mach port guards controlled by task settings.
		 */

		/* Is delivery enabled */
		if ((behavior & TASK_EXC_GUARD_MP_DELIVER) == 0) {
			return;
		}

		/* If only once, make sure we're that once */
		while (behavior & TASK_EXC_GUARD_MP_ONCE) {
			uint32_t new_behavior = behavior & ~TASK_EXC_GUARD_MP_DELIVER;

			if (FUNC1(behavior, new_behavior, &task->task_exc_guard)) {
				break;
			}
			behavior = task->task_exc_guard;
			if ((behavior & TASK_EXC_GUARD_MP_DELIVER) == 0) {
				return;
			}
		}

		/* Raise exception via corpse fork or synchronously */
		if ((task->task_exc_guard & TASK_EXC_GUARD_MP_CORPSE) &&
		    (task->task_exc_guard & TASK_EXC_GUARD_MP_FATAL) == 0) {
			FUNC6(code, subcode, NULL);
		} else {
			FUNC5(EXC_GUARD, code, subcode);
		}

		/* Terminate the task if desired */
		if (task->task_exc_guard & TASK_EXC_GUARD_MP_FATAL) {
			FUNC4(task);
		}
		break;
	}
}