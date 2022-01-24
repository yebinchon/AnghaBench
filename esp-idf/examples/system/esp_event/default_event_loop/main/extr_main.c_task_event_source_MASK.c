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
typedef  int /*<<< orphan*/  iteration ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TASK_EVENTS ; 
 int TASK_ITERATIONS_COUNT ; 
 int TASK_ITERATIONS_UNREGISTER ; 
 int /*<<< orphan*/  TASK_ITERATION_EVENT ; 
 int /*<<< orphan*/  TASK_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  task_iteration_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void* args)
{
    for(int iteration = 1; iteration <= TASK_ITERATIONS_COUNT; iteration++) {

        FUNC1(TAG, "%s:%s: posting to default loop, %d out of %d", TASK_EVENTS,
                FUNC4(TASK_EVENTS, TASK_ITERATION_EVENT), iteration, TASK_ITERATIONS_COUNT);

        // Post that the loop has iterated. Notice that the iteration count is passed to the handler. Take note
        // that data passed during event posting is a deep copy of the original data.
        FUNC0(FUNC3(TASK_EVENTS, TASK_ITERATION_EVENT, &iteration, sizeof(iteration), portMAX_DELAY));

        if (iteration == TASK_ITERATIONS_UNREGISTER) {
            FUNC1(TAG, "%s:%s: unregistering task_iteration_handler", TASK_EVENTS, FUNC4(TASK_EVENTS, TASK_ITERATION_EVENT));
            FUNC0(FUNC2(TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler));
        }

        FUNC6(FUNC5(TASK_PERIOD));
    }

    FUNC6(FUNC5(TASK_PERIOD));

    FUNC1(TAG, "%s:%s: deleting task event source", TASK_EVENTS, FUNC4(TASK_EVENTS, TASK_ITERATION_EVENT));

    FUNC7(NULL);
}