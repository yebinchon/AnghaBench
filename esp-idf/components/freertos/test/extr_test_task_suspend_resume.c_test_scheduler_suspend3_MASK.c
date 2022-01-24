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
typedef  int /*<<< orphan*/  TimerHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  control_task ; 
 int delta_ms ; 
 int duration_ctrl_task_ms ; 
 int duration_timer_ms ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  timer_callback ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int waiting_ms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int cpu)
{
    duration_timer_ms = 0;
    duration_ctrl_task_ms = 0;

    FUNC1("Test for CPU%d\n", cpu);
    TimerHandle_t count_time = FUNC4("count_time", 1, pdTRUE, NULL, timer_callback);
    FUNC6( count_time, portMAX_DELAY);
    FUNC3(&control_task, "control_task", 8192, NULL, 5, NULL, cpu);

    FUNC2(waiting_ms * 2 / portTICK_PERIOD_MS);
    FUNC5(count_time, portMAX_DELAY);
    FUNC1("Finish duration_timer_ms=%d ms\n", duration_timer_ms);

    FUNC0(2, waiting_ms * 2, duration_timer_ms);
    FUNC0(5, waiting_ms + delta_ms, duration_ctrl_task_ms);

    FUNC1("\n");
}