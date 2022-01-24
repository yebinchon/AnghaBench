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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  TYPE_1__ mach_timespec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TIMER_CALL_USER_NORMAL ; 
 int /*<<< orphan*/  alarm_expire_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
	mach_timespec_t		*alarm_time)
{
	uint64_t	abstime;

	FUNC0(alarm_time->tv_sec, alarm_time->tv_nsec, &abstime);
	FUNC1(&alarm_expire_timer, NULL, abstime, 0, TIMER_CALL_USER_NORMAL, FALSE);
}