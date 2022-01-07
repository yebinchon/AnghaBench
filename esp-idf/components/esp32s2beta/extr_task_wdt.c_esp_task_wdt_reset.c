
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_reset; } ;
typedef TYPE_1__ twdt_task_t ;
typedef int esp_err_t ;
typedef int TaskHandle_t ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 TYPE_1__* find_task_in_twdt_list (int ,int*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int reset_hw_timer () ;
 int * twdt_config ;
 int twdt_spinlock ;
 int xTaskGetCurrentTaskHandle () ;

esp_err_t esp_task_wdt_reset(void)
{
    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), ESP_ERR_INVALID_STATE);

    TaskHandle_t handle = xTaskGetCurrentTaskHandle();
    twdt_task_t *target_task;
    bool all_reset;


    target_task = find_task_in_twdt_list(handle, &all_reset);

    ASSERT_EXIT_CRIT_RETURN((target_task != ((void*)0)), ESP_ERR_NOT_FOUND);

    target_task->has_reset = 1;
    if(all_reset){
        reset_hw_timer();
    }

    portEXIT_CRITICAL(&twdt_spinlock);
    return ESP_OK;
}
