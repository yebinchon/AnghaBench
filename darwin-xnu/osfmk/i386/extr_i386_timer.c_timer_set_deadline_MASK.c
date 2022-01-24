#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_4__ {int /*<<< orphan*/  when_set; int /*<<< orphan*/  deadline; } ;
typedef  TYPE_1__ rtclock_timer_t ;
struct TYPE_5__ {TYPE_1__ rtclock_timer; } ;
typedef  TYPE_2__ cpu_data_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(uint64_t deadline)
{
	rtclock_timer_t		*mytimer;
	spl_t			s;
	cpu_data_t		*pp;

	s = FUNC2();				/* no interruptions */
	pp = FUNC0();

	mytimer = &pp->rtclock_timer;		/* Point to the timer itself */
	mytimer->deadline = deadline;		/* Set new expiration time */
	mytimer->when_set = FUNC1();

	FUNC4();

	FUNC3(s);
}