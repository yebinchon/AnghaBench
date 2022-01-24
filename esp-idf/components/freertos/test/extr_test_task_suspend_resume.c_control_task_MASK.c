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
typedef  int int64_t ;

/* Variables and functions */
 int delta_ms ; 
 int duration_ctrl_task_ms ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int waiting_ms ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *pvParameters)
{
    int cpu_id = FUNC6();
    FUNC1(2000); // let to start the waiting_task first
    FUNC2("Start control_task cpu=%d\n", cpu_id);
    int64_t start_time = FUNC0();

    FUNC4();
    FUNC1(waiting_ms * 1000 + delta_ms * 1000);
    FUNC3();

    duration_ctrl_task_ms = (FUNC0() - start_time) / 1000;
    FUNC2("Finish control_task cpu=%d, time=%d ms\n", cpu_id, duration_ctrl_task_ms);
    FUNC5(NULL);
}