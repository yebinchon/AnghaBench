
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ERROR_CODE (int ,int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int TWDT_TIMEOUT_S ;
 int esp_task_wdt_add (int *) ;
 int esp_task_wdt_deinit () ;
 int esp_task_wdt_delete (int *) ;
 int esp_task_wdt_init (int ,int) ;
 int esp_task_wdt_status (int *) ;
 int pdMS_TO_TICKS (int) ;
 int portNUM_PROCESSORS ;
 int printf (char*) ;
 int reset_task ;
 int ** task_handles ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,int,int **,int) ;
 int * xTaskGetIdleTaskHandleForCPU (int) ;

void app_main(void)
{
    printf("Initialize TWDT\n");

    CHECK_ERROR_CODE(esp_task_wdt_init(TWDT_TIMEOUT_S, 0), ESP_OK);



    esp_task_wdt_add(xTaskGetIdleTaskHandleForCPU(0));


    esp_task_wdt_add(xTaskGetIdleTaskHandleForCPU(1));



    for(int i = 0; i < portNUM_PROCESSORS; i++){
        xTaskCreatePinnedToCore(reset_task, "reset task", 1024, ((void*)0), 10, &task_handles[i], i);
    }

    printf("Delay for 10 seconds\n");
    vTaskDelay(pdMS_TO_TICKS(10000));

    printf("Unsubscribing and deleting tasks\n");

    for(int i = 0; i < portNUM_PROCESSORS; i++){
        vTaskDelete(task_handles[i]);
        CHECK_ERROR_CODE(esp_task_wdt_delete(task_handles[i]), ESP_OK);
        CHECK_ERROR_CODE(esp_task_wdt_status(task_handles[i]), ESP_ERR_NOT_FOUND);


        CHECK_ERROR_CODE(esp_task_wdt_delete(xTaskGetIdleTaskHandleForCPU(i)), ESP_OK);
        CHECK_ERROR_CODE(esp_task_wdt_status(xTaskGetIdleTaskHandleForCPU(i)), ESP_ERR_NOT_FOUND);
    }



    CHECK_ERROR_CODE(esp_task_wdt_deinit(), ESP_OK);
    CHECK_ERROR_CODE(esp_task_wdt_status(((void*)0)), ESP_ERR_INVALID_STATE);

    printf("Complete\n");
}
