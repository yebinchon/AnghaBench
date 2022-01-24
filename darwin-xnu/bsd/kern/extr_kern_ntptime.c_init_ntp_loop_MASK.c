#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  timer_call_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  NTP_LOOP_PERIOD_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ ntp_loop_active ; 
 scalar_t__ ntp_loop_period ; 
 int /*<<< orphan*/  ntp_loop_update ; 
 scalar_t__ ntp_loop_update_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t	abstime;

	ntp_loop_active = 0;
	FUNC0(NTP_LOOP_PERIOD_INTERVAL, &abstime);
	ntp_loop_period = (uint32_t)abstime;
	FUNC1(&ntp_loop_update, (timer_call_func_t)ntp_loop_update_call, NULL);
}