
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ twdt_task_t ;
typedef int esp_err_t ;
typedef int * TaskHandle_t ;
struct TYPE_6__ {TYPE_1__* list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int esp_deregister_freertos_idle_hook_for_cpu (int ,int) ;
 TYPE_1__* find_task_in_twdt_list (int *,int*) ;
 int free (TYPE_1__*) ;
 int idle_hook_cb ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int portNUM_PROCESSORS ;
 int reset_hw_timer () ;
 TYPE_2__* twdt_config ;
 int twdt_spinlock ;
 int * xTaskGetCurrentTaskHandle () ;
 int * xTaskGetIdleTaskHandleForCPU (int) ;

esp_err_t esp_task_wdt_delete(TaskHandle_t handle)
{
    if(handle == ((void*)0)){
        handle = xTaskGetCurrentTaskHandle();
    }
    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_NOT_FOUND);

    twdt_task_t *target_task;
    bool all_reset;
    target_task = find_task_in_twdt_list(handle, &all_reset);

    ASSERT_EXIT_CRIT_RETURN((target_task != ((void*)0)), ESP_ERR_INVALID_ARG);

    if(target_task == twdt_config->list){
        twdt_config->list = target_task->next;
        free(target_task);
    }else{
        twdt_task_t *prev;
        for (prev = twdt_config->list; prev->next != target_task; prev = prev->next){
            ;
        }
        prev->next = target_task->next;
        free(target_task);
    }


    for(int i = 0; i < portNUM_PROCESSORS; i++){
        if(handle == xTaskGetIdleTaskHandleForCPU(i)){
            esp_deregister_freertos_idle_hook_for_cpu(idle_hook_cb, i);
            break;
        }
    }

    if(all_reset){
        reset_hw_timer();
    }

    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
