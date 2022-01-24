#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int has_reset; struct TYPE_5__* next; int /*<<< orphan*/  task_handle; } ;
typedef  TYPE_1__ twdt_task_t ;
typedef  int /*<<< orphan*/  TaskHandle_t ;
struct TYPE_6__ {TYPE_1__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_RETURN ; 
 TYPE_1__* FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
    FUNC3(&twdt_spinlock);
    //Return immediately if TWDT has not been initialized
    FUNC0((twdt_config != NULL), VOID_RETURN);

    //Check if task is on list
    TaskHandle_t handle = FUNC6();
    bool all_reset;
    twdt_task_t *target_task = FUNC2(handle, &all_reset);

    //reset the task if it's on the list, then return
    if(target_task != NULL){
        target_task->has_reset = true;
        if(all_reset){
            FUNC5();       //Reset hardware timer if all other tasks have reset
        }
        FUNC4(&twdt_spinlock);
        return;
    }

    //Add task if it's has not on list
    target_task = FUNC1(1, sizeof(twdt_task_t));
    FUNC0((target_task != NULL), VOID_RETURN);   //If calloc failed
    target_task->task_handle = handle;
    target_task->has_reset = true;
    target_task->next = NULL;

    if (twdt_config->list == NULL) {    //Adding to empty list
        twdt_config->list = target_task;
    } else {    //Adding to tail of list
        twdt_task_t *task;
        for (task = twdt_config->list; task->next != NULL; task = task->next){
            ;   //point task to current tail of wdt task list
        }
        task->next = target_task;
    }

    FUNC4(&twdt_spinlock);
}