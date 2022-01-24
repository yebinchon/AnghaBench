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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ TickType_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDEAL_DELAY_PERIOD_MS ; 
 int /*<<< orphan*/  IDEAL_DELAY_PERIOD_US ; 
 int NO_OF_CYCLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TICKS_TO_DELAY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TICK_PERIOD_US ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  task_delete_semphr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void FUNC9(void* arg)
{
    uint64_t ref_prev, ref_current;
    TickType_t last_wake_time;
    TickType_t ticks_before_delay;

    FUNC4(1);  //Delay until next tick to synchronize operations to tick boundaries

    last_wake_time = FUNC8();
    ticks_before_delay = last_wake_time;
    ref_prev = FUNC3();

    for(int i = 0; i < NO_OF_CYCLES; i++){
        //Delay of TICKS_TO_DELAY
        FUNC5(&last_wake_time, TICKS_TO_DELAY);
        //Get current ref clock
        FUNC0(IDEAL_DELAY_PERIOD_MS, FUNC2(FUNC8() - ticks_before_delay));
        ref_current = FUNC3();
        FUNC1(TICK_PERIOD_US, IDEAL_DELAY_PERIOD_US, (uint32_t)(ref_current - ref_prev));
        ref_prev = ref_current;
        ticks_before_delay = last_wake_time;
    }

    //Delete Task after prescribed number of cycles
    FUNC7(task_delete_semphr);
    FUNC6(NULL);
}