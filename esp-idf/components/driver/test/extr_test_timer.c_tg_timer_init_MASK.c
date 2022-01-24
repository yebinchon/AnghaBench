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

/* Variables and functions */
 int /*<<< orphan*/  ESP_INTR_FLAG_LOWMED ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 double TIMER_SCALE ; 
 int /*<<< orphan*/  test_timer_group_isr ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,double) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(int timer_group, int timer_idx, double alarm_time)
{
    FUNC3(timer_group, timer_idx);
    FUNC5(timer_group, timer_idx, 0x0);
    FUNC4(timer_group, timer_idx, alarm_time * TIMER_SCALE);
    FUNC1(timer_group, timer_idx);
    FUNC2(timer_group, timer_idx, test_timer_group_isr, FUNC0(timer_group, timer_idx), ESP_INTR_FLAG_LOWMED, NULL);
    FUNC6(timer_group, timer_idx);
}