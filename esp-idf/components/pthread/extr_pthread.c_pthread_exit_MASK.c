#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; scalar_t__ join_task; void* retval; scalar_t__ detached; scalar_t__ task_arg; } ;
typedef  TYPE_1__ esp_pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTHREAD_TASK_STATE_EXIT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eNoAction ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  s_threads_mux ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC14(void *value_ptr)
{
    bool detached = false;
    /* preemptively clean up thread local storage, rather than
       waiting for the idle task to clean up the thread */
    FUNC6();

    if (FUNC11(s_threads_mux, portMAX_DELAY) != pdTRUE) {
        FUNC2(false && "Failed to lock threads list!");
    }
    esp_pthread_t *pthread = FUNC5(FUNC12());
    if (!pthread) {
        FUNC2(false && "Failed to find pthread for current task!");
    }
    if (pthread->task_arg) {
        FUNC3(pthread->task_arg);
    }
    if (pthread->detached) {
        // auto-free for detached threads
        FUNC4(pthread);
        detached = true;
    } else {
        // Set return value
        pthread->retval = value_ptr;
        // Remove from list, it indicates that task has exited
        if (pthread->join_task) {
            // notify join
            FUNC13(pthread->join_task, 0, eNoAction);
        } else {
            pthread->state = PTHREAD_TASK_STATE_EXIT;
        }
    }
    FUNC10(s_threads_mux);

    FUNC0(TAG, "Task stk_wm = %d", FUNC7(NULL));

    if (detached) {
        FUNC8(NULL);
    } else {
        FUNC9(NULL);
    }

    // Should never be reached
    FUNC1();
}