
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * task_handle; struct TYPE_3__* next; } ;
typedef TYPE_1__ twdt_task_t ;
typedef int esp_err_t ;
typedef int * TaskHandle_t ;
struct TYPE_4__ {TYPE_1__* list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int,int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* twdt_config ;
 int twdt_spinlock ;
 int * xTaskGetCurrentTaskHandle () ;

esp_err_t esp_task_wdt_status(TaskHandle_t handle)
{
    if(handle == ((void*)0)){
        handle = xTaskGetCurrentTaskHandle();
    }

    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_INVALID_STATE);

    twdt_task_t *task;
    for(task = twdt_config->list; task!=((void*)0); task=task->next){

        ASSERT_EXIT_CRIT_RETURN((task->task_handle != handle), ESP_OK);
    }


    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_ERR_NOT_FOUND;
}
