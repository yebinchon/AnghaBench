#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int queue_size; char* task_name; int task_stack_size; int /*<<< orphan*/  task_core_id; int /*<<< orphan*/  task_priority; } ;
typedef  TYPE_1__ esp_event_loop_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TASK_EVENTS ; 
 int /*<<< orphan*/  TASK_ITERATION_EVENT ; 
 int /*<<< orphan*/  application_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop_with_task ; 
 int /*<<< orphan*/  loop_without_task ; 
 int /*<<< orphan*/  task_event_source ; 
 int /*<<< orphan*/  task_iteration_handler ; 
 int /*<<< orphan*/  tskNO_AFFINITY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
    FUNC1(TAG, "setting up");

    esp_event_loop_args_t loop_with_task_args = {
        .queue_size = 5,
        .task_name = "loop_task", // task will be created
        .task_priority = FUNC4(NULL),
        .task_stack_size = 2048,
        .task_core_id = tskNO_AFFINITY
    };

    esp_event_loop_args_t loop_without_task_args = {
        .queue_size = 5,
        .task_name = NULL // no task will be created
    };

    // Create the event loops
    FUNC0(FUNC3(&loop_with_task_args, &loop_with_task));
    FUNC0(FUNC3(&loop_without_task_args, &loop_without_task));

    // Register the handler for task iteration event. Notice that the same handler is used for handling event on different loops.
    // The loop handle is provided as an argument in order for this example to display the loop the handler is being run on.
    FUNC0(FUNC2(loop_with_task, TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler, loop_with_task));
    FUNC0(FUNC2(loop_without_task, TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler, loop_without_task));

    FUNC1(TAG, "starting event source");

    // Create the event source task with the same priority as the current task
    FUNC5(task_event_source, "task_event_source", 2048, NULL, FUNC4(NULL), NULL);

    FUNC1(TAG, "starting application task");
    // Create the application task with the same priority as the current task
    FUNC5(application_task, "application_task", 2048, NULL, FUNC4(NULL), NULL);
}