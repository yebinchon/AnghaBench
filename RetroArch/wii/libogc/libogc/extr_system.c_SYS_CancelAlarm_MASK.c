#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  syswd_t ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  alarm; scalar_t__ start_per; scalar_t__ periodic; scalar_t__ ticks; int /*<<< orphan*/ * alarmhandler; } ;
typedef  TYPE_1__ alarm_st ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

s32 FUNC3(syswd_t thealarm)
{
	alarm_st *alarm;

	alarm = FUNC0(thealarm);
	if(!alarm) return -1;

	alarm->alarmhandler = NULL;
	alarm->ticks = 0;
	alarm->periodic = 0;
	alarm->start_per = 0;

	FUNC2(&alarm->alarm);
	FUNC1();
	return 0;
}