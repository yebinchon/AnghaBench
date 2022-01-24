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
 scalar_t__ ESP_OK ; 
 int NUM_OF_SPIN_TASKS ; 
 int STATS_TICKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  sync_spin_task ; 
 int /*<<< orphan*/  sync_stats_task ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    FUNC5(sync_stats_task, portMAX_DELAY);

    //Start all the spin tasks
    for (int i = 0; i < NUM_OF_SPIN_TASKS; i++) {
        FUNC4(sync_spin_task);
    }

    //Print real time stats periodically
    while (1) {
        FUNC2("\n\nGetting real time stats over %d ticks\n", STATS_TICKS);
        if (FUNC1(STATS_TICKS) == ESP_OK) {
            FUNC2("Real time stats obtained\n");
        } else {
            FUNC2("Error getting real time stats\n");
        }
        FUNC3(FUNC0(1000));
    }
}