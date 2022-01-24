#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * task_handle; struct TYPE_3__* next; } ;
typedef  TYPE_1__ twdt_task_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/ * TaskHandle_t ;
struct TYPE_4__ {TYPE_1__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 
 int /*<<< orphan*/ * FUNC3 () ; 

esp_err_t FUNC4(TaskHandle_t handle)
{
    if(handle == NULL){
        handle = FUNC3();
    }

    FUNC1(&twdt_spinlock);
    //Return if TWDT is not initialized
    FUNC0((twdt_config != NULL), ESP_ERR_INVALID_STATE);

    twdt_task_t *task;
    for(task = twdt_config->list; task!=NULL; task=task->next){
        //Return ESP_OK if task is found
        FUNC0((task->task_handle != handle), ESP_OK);
    }

    //Task could not be found
    FUNC2(&twdt_spinlock);
    return ESP_ERR_NOT_FOUND;
}