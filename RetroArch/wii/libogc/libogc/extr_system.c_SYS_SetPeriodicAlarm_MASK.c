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
typedef  scalar_t__ syswd_t ;
struct timespec {int dummy; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  alarmcallback ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {void* start_per; int /*<<< orphan*/  alarm; TYPE_1__ object; scalar_t__ ticks; void* cb_arg; int /*<<< orphan*/  alarmhandler; void* periodic; } ;
typedef  TYPE_2__ alarm_st ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (struct timespec const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  __sys_alarmhandler ; 

s32 FUNC5(syswd_t thealarm,const struct timespec *tp_start,const struct timespec *tp_period,alarmcallback cb,void *cbarg)
{
	alarm_st *alarm;

	alarm = FUNC0(thealarm);
	if(!alarm) return -1;

	alarm->start_per = FUNC2(tp_start);
	alarm->periodic = FUNC2(tp_period);
	alarm->alarmhandler = cb;
	alarm->cb_arg = cbarg;

	alarm->ticks = 0;

	FUNC3(&alarm->alarm,__sys_alarmhandler,alarm->object.id,(void*)thealarm);
	FUNC4(&alarm->alarm,alarm->start_per);
	FUNC1();
	return 0;
}