#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_event_post_instance_t ;
struct TYPE_9__ {char* name; int /*<<< orphan*/ * profiling_mutex; int /*<<< orphan*/ * mutex; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * running_task; int /*<<< orphan*/ * task; int /*<<< orphan*/  loop_nodes; } ;
typedef  TYPE_1__ esp_event_loop_instance_t ;
typedef  scalar_t__ esp_event_loop_handle_t ;
struct TYPE_10__ {char* task_name; int /*<<< orphan*/  task_core_id; int /*<<< orphan*/  task_priority; int /*<<< orphan*/  task_stack_size; int /*<<< orphan*/  queue_size; } ;
typedef  TYPE_2__ esp_event_loop_args_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*) ; 
 TYPE_1__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  esp_event_loop_run_task ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_event_loops ; 
 int /*<<< orphan*/  s_event_loops_spinlock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

esp_err_t FUNC15(const esp_event_loop_args_t* event_loop_args, esp_event_loop_handle_t* event_loop)
{
    FUNC4(event_loop_args);

    esp_event_loop_instance_t* loop;
    esp_err_t err = ESP_ERR_NO_MEM; // most likely error

    loop = FUNC5(1, sizeof(*loop));
    if (loop == NULL) {
        FUNC1(TAG, "alloc for event loop failed");
        return err;
    }

    loop->queue = FUNC11(event_loop_args->queue_size , sizeof(esp_event_post_instance_t));
    if (loop->queue == NULL) {
        FUNC1(TAG, "create event loop queue failed");
        goto on_err;
    }

    loop->mutex = FUNC13();
    if (loop->mutex == NULL) {
        FUNC1(TAG, "create event loop mutex failed");
        goto on_err;
    }

#ifdef CONFIG_ESP_EVENT_LOOP_PROFILING
    loop->profiling_mutex = xSemaphoreCreateMutex();
    if (loop->profiling_mutex == NULL) {
        ESP_LOGE(TAG, "create event loop profiling mutex failed");
        goto on_err;
    }
#endif

    FUNC2(&(loop->loop_nodes));

    // Create the loop task if requested
    if (event_loop_args->task_name != NULL) {
        BaseType_t task_created = FUNC14(esp_event_loop_run_task, event_loop_args->task_name,
                    event_loop_args->task_stack_size, (void*) loop,
                    event_loop_args->task_priority, &(loop->task), event_loop_args->task_core_id);

        if (task_created != pdPASS) {
            FUNC1(TAG, "create task for loop failed");
            err = ESP_FAIL;
            goto on_err;
        }

        loop->name = event_loop_args->task_name;

        FUNC0(TAG, "created task for loop %p", loop);
    } else {
        loop->name = "";
        loop->task = NULL;
    }

    loop->running_task = NULL;

#ifdef CONFIG_ESP_EVENT_LOOP_PROFILING
    portENTER_CRITICAL(&s_event_loops_spinlock);
    SLIST_INSERT_HEAD(&s_event_loops, loop, next);
    portEXIT_CRITICAL(&s_event_loops_spinlock);
#endif

    *event_loop = (esp_event_loop_handle_t) loop;

    FUNC0(TAG, "created event loop %p", loop);

    return ESP_OK;

on_err:
    if (loop->queue != NULL) {
        FUNC9(loop->queue);
    }

    if (loop->mutex != NULL) {
        FUNC10(loop->mutex);
    }

#ifdef CONFIG_ESP_EVENT_LOOP_PROFILING
    if (loop->profiling_mutex != NULL) {
        vSemaphoreDelete(loop->profiling_mutex);
    }
#endif

    FUNC6(loop);

    return err;
}