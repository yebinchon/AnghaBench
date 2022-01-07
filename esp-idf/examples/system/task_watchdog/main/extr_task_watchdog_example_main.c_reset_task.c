
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ERROR_CODE (int ,int ) ;
 int ESP_OK ;
 int TASK_RESET_PERIOD_S ;
 int esp_task_wdt_add (int *) ;
 int esp_task_wdt_reset () ;
 int esp_task_wdt_status (int *) ;
 int pdMS_TO_TICKS (int) ;
 int vTaskDelay (int ) ;

void reset_task(void *arg)
{

    CHECK_ERROR_CODE(esp_task_wdt_add(((void*)0)), ESP_OK);
    CHECK_ERROR_CODE(esp_task_wdt_status(((void*)0)), ESP_OK);

    while(1){

        CHECK_ERROR_CODE(esp_task_wdt_reset(), ESP_OK);
        vTaskDelay(pdMS_TO_TICKS(TASK_RESET_PERIOD_S * 1000));
    }
}
