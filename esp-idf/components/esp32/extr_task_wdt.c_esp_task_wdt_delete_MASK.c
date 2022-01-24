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
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ twdt_task_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/ * TaskHandle_t ;
struct TYPE_6__ {TYPE_1__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  idle_hook_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int portNUM_PROCESSORS ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

esp_err_t FUNC9(TaskHandle_t handle)
{
    if(handle == NULL){
        handle = FUNC7();
    }
    FUNC4(&twdt_spinlock);
    //Return error if twdt has not been initialized
    FUNC0((twdt_config != NULL), ESP_ERR_NOT_FOUND);

    twdt_task_t *target_task;
    bool all_reset;
    target_task = FUNC2(handle, &all_reset);
    //Task doesn't exist on list. Return error
    FUNC0((target_task != NULL), ESP_ERR_INVALID_ARG);

    if(target_task == twdt_config->list){     //target_task is head of list. Delete
        twdt_config->list = target_task->next;
        FUNC3(target_task);
    }else{                                      //target_task not head of list. Delete
        twdt_task_t *prev;
        for (prev = twdt_config->list; prev->next != target_task; prev = prev->next){
            ;   //point prev to task preceding target_task
        }
        prev->next = target_task->next;
        FUNC3(target_task);
    }

    //If idle task, deregister idle hook callback form appropriate core
    for(int i = 0; i < portNUM_PROCESSORS; i++){
        if(handle == FUNC8(i)){
            FUNC1(idle_hook_cb, i);
            break;
        }
    }

    if(all_reset){     //Reset hardware timer if all remaining tasks have reset
        FUNC6();
    }

    FUNC5(&twdt_spinlock);
    return ESP_OK;
}