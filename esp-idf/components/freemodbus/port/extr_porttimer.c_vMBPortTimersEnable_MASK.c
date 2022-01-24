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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usTimerGroupIndex ; 
 int /*<<< orphan*/  usTimerIndex ; 

void FUNC5(void)
{
#ifdef CONFIG_FMB_TIMER_PORT_ENABLED
    ESP_ERROR_CHECK(timer_pause(usTimerGroupIndex, usTimerIndex));
    ESP_ERROR_CHECK(timer_set_counter_value(usTimerGroupIndex, usTimerIndex, 0ULL));
    ESP_ERROR_CHECK(timer_enable_intr(usTimerGroupIndex, usTimerIndex));
    ESP_ERROR_CHECK(timer_start(usTimerGroupIndex, usTimerIndex));
#endif
}