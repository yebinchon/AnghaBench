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
 int duration_wait_task_ms ; 
 int FUNC0 () ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int waiting_ms ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *pvParameters)
{
    int cpu_id = FUNC4();
    int64_t start_time = FUNC0();
    FUNC1("Start waiting_task cpu=%d\n", cpu_id);

    FUNC2(waiting_ms / portTICK_PERIOD_MS);

    duration_wait_task_ms = (FUNC0() - start_time) / 1000;
    FUNC1("Finish waiting_task cpu=%d, time=%d ms\n", cpu_id, duration_wait_task_ms);
    FUNC3(NULL);
}