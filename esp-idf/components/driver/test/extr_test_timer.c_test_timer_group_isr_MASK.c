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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  timer_idx; int /*<<< orphan*/  timer_group; } ;
typedef  TYPE_1__ timer_info_t ;
typedef  int /*<<< orphan*/  timer_idx_t ;
typedef  int /*<<< orphan*/  timer_group_t ;

/* Variables and functions */
 double TIMER_SCALE ; 
 int alarm_flag ; 
 int /*<<< orphan*/  FUNC0 (char*,double,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,double*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC6(void *para)
{
    timer_info_t* info = (timer_info_t*) para;
    const timer_group_t timer_group = info->timer_group;
    const timer_idx_t timer_idx = info->timer_idx;
    uint64_t timer_val;
    double time;
    uint64_t alarm_value;
    alarm_flag = true;
    if (FUNC4(timer_group, timer_idx)) {
        FUNC5(timer_group, timer_idx);
        FUNC0("This is TG%d timer[%d] reload-timer alarm!\n", timer_group, timer_idx);
        FUNC3(timer_group, timer_idx, &timer_val);
        FUNC2(timer_group, timer_idx, &time);
        FUNC0("time: %.8f S\n", time);
    } else {
        FUNC5(timer_group, timer_idx);
        FUNC0("This is TG%d timer[%d] count-up-timer alarm!\n", timer_group, timer_idx);
        FUNC3(timer_group, timer_idx, &timer_val);
        FUNC2(timer_group, timer_idx, &time);
        FUNC1(timer_group, timer_idx, &alarm_value);
        FUNC0("time: %.8f S\n", time);
        double alarm_time = (double) alarm_value / TIMER_SCALE;
        FUNC0("alarm_time: %.8f S\n", alarm_time);
    }
}