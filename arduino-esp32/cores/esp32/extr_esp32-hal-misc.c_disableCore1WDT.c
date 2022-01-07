
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TaskHandle_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ esp_task_wdt_delete (int *) ;
 int log_e (char*) ;
 int * xTaskGetIdleTaskHandleForCPU (int) ;

void disableCore1WDT(){
    TaskHandle_t idle_1 = xTaskGetIdleTaskHandleForCPU(1);
    if(idle_1 == ((void*)0) || esp_task_wdt_delete(idle_1) != ESP_OK){
        log_e("Failed to remove Core 1 IDLE task from WDT");
    }
}
