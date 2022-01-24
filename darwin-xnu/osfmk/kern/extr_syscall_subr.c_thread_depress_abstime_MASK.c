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
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_6__ {int sched_flags; int /*<<< orphan*/  depress_timer_active; int /*<<< orphan*/  depress_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SETPRI_LAZY ; 
 int TH_SFLAG_DEPRESS ; 
 int TH_SFLAG_POLLDEPRESS ; 
 int /*<<< orphan*/  TIMER_CALL_USER_CRITICAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC9(uint64_t interval)
{
	thread_t self = FUNC2();

	spl_t s = FUNC3();
	FUNC5(self);

	FUNC0((self->sched_flags & TH_SFLAG_DEPRESS) == 0);

	if ((self->sched_flags & TH_SFLAG_POLLDEPRESS) == 0) {
		self->sched_flags |= TH_SFLAG_DEPRESS;
		FUNC6(self, SETPRI_LAZY);

		if (interval != 0) {
			uint64_t deadline;

			FUNC1(interval, &deadline);
			if (!FUNC8(&self->depress_timer, deadline, TIMER_CALL_USER_CRITICAL))
				self->depress_timer_active++;
		}
	}

	FUNC7(self);
	FUNC4(s);
}