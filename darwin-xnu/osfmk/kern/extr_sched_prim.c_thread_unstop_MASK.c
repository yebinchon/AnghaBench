#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_7__ {int state; scalar_t__ wake_active; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int TH_RUN ; 
 int TH_SUSP ; 
 int TH_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(
	thread_t	thread)
{
	spl_t		s = FUNC1();

	FUNC6(thread);
	FUNC3(thread);

	FUNC0((thread->state & (TH_RUN|TH_WAIT|TH_SUSP)) != TH_SUSP);

	if (thread->state & TH_SUSP) {
		thread->state &= ~TH_SUSP;

		if (thread->wake_active) {
			thread->wake_active = FALSE;
			FUNC4(thread);

			FUNC5(&thread->wake_active);
			FUNC7(thread);
			FUNC2(s);

			return;
		}
	}

	FUNC4(thread);
	FUNC7(thread);
	FUNC2(s);
}