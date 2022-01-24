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
typedef  int /*<<< orphan*/  TaskHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int volatile) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int volatile) ; 
 scalar_t__ UNITY_FREERTOS_PRIORITY ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int volatile) ; 
 int /*<<< orphan*/  task_count ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,void*,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(int target_core)
{
    volatile unsigned counter = 0;
    TaskHandle_t counter_task;

    FUNC7(task_count, "Count", 2048,
                            (void *)&counter, UNITY_FREERTOS_PRIORITY + 1,
                            &counter_task, target_core);

    FUNC3(10);
    /* check some counting has happened */
    FUNC1(0, counter);

    // Do the next part a few times, just to be sure multiple suspends & resumes
    // work as expected...
    const int TEST_ITERATIONS = 5;
    for (int i = 0; i < TEST_ITERATIONS; i++) {
        FUNC6(counter_task);
        unsigned suspend_count = counter;
        FUNC2("Suspending @ %d\n", suspend_count);

        FUNC3(2);

        FUNC2("Still suspended @ %d\n", counter);

        /* check the counter hasn't gone up while the task is suspended */
        FUNC0(suspend_count, counter);
        FUNC5(counter_task);
        FUNC3(2);

        FUNC2("Resumed @ %d\n", counter);
        /* check the counter is going up again now the task is resumed */
        FUNC1(suspend_count, counter);
    }

    FUNC4(counter_task);
}