#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ deadline; int /*<<< orphan*/  deadline_set; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {TYPE_1__ threshold; } ;
typedef  TYPE_2__ timer_longterm_t ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int TIMER_CALL_LOCAL ; 
 int TIMER_CALL_SYS_CRITICAL ; 
 scalar_t__ TIMER_LONGTERM_NONE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ master_cpu ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  timer_longterm_queue ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(timer_longterm_t *tlp)
{
	spl_t	s = FUNC2();

	FUNC6(timer_longterm_queue);

	if (FUNC0() != master_cpu)
		FUNC1("timer_longterm_update_master() on non-boot cpu");

	FUNC5(tlp);

	if (tlp->threshold.deadline != TIMER_LONGTERM_NONE)
		FUNC4(
			&tlp->threshold.timer,
			tlp->threshold.deadline_set,
			TIMER_CALL_LOCAL | TIMER_CALL_SYS_CRITICAL);
	
	FUNC7(timer_longterm_queue);
	FUNC3(s);
}