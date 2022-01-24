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
typedef  int syswd_t ;
typedef  int s32 ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ object; scalar_t__ periodic; scalar_t__ start_per; scalar_t__ ticks; int /*<<< orphan*/ * alarmhandler; } ;
typedef  TYPE_2__ alarm_st ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWP_OBJTYPE_SYSWD ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

s32 FUNC4(syswd_t *thealarm)
{
	alarm_st *alarm;

	alarm = FUNC2();
	if(!alarm) return -1;

	alarm->alarmhandler = NULL;
	alarm->ticks = 0;
	alarm->start_per = 0;
	alarm->periodic = 0;

	*thealarm = (FUNC1(LWP_OBJTYPE_SYSWD)|FUNC0(alarm->object.id));
	FUNC3();
	return 0;
}