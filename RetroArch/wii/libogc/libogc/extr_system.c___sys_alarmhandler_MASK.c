#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ syswd_t ;
struct TYPE_2__ {scalar_t__ periodic; int /*<<< orphan*/  alarm; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* alarmhandler ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ alarm_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ LWP_OBJTYPE_SYSWD ; 
 scalar_t__ SYS_WD_NULL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_alarm_objects ; 

__attribute__((used)) static void FUNC7(void *arg)
{
	alarm_st *alarm;
	syswd_t thealarm = (syswd_t)arg;

	if(thealarm==SYS_WD_NULL || FUNC1(thealarm)!=LWP_OBJTYPE_SYSWD) return;

	FUNC3();
	alarm = (alarm_st*)FUNC2(&sys_alarm_objects,FUNC0(thealarm));
	if(alarm) {
		if(alarm->alarmhandler) alarm->alarmhandler(thealarm,alarm->cb_arg);
		if(alarm->periodic) FUNC5(&alarm->alarm,alarm->periodic);
	}
	FUNC4();
}