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
struct TYPE_5__ {int /*<<< orphan*/  ticks; int /*<<< orphan*/  alarm; TYPE_1__ object; scalar_t__ start_per; scalar_t__ periodic; int /*<<< orphan*/  alarmhandler; void* cb_arg; } ;
typedef  TYPE_2__ alarm_st ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct timespec const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __sys_alarmhandler ; 

s32 FUNC5(syswd_t thealarm,const struct timespec *tp,alarmcallback cb,void *cbarg)
{
	alarm_st *alarm;

	alarm = FUNC0(thealarm);
	if(!alarm) return -1;

	alarm->cb_arg = cbarg;
	alarm->alarmhandler = cb;
	alarm->ticks = FUNC2(tp);

	alarm->periodic = 0;
	alarm->start_per = 0;

	FUNC3(&alarm->alarm,__sys_alarmhandler,alarm->object.id,(void*)thealarm);
	FUNC4(&alarm->alarm,alarm->ticks);
	FUNC1();
	return 0;
}