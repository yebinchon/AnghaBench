
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TaskHandle_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ esp_task_wdt_add (int *) ;
 int log_e (char*) ;
 int * xTaskGetIdleTaskHandleForCPU (int) ;

void enableCore1WDT(){
    TaskHandle_t idle_1 = xTaskGetIdleTaskHandleForCPU(1);
    if(idle_1 == ((void*)0) || esp_task_wdt_add(idle_1) != ESP_OK){
        log_e("Failed to add Core 1 IDLE task to WDT");
    }
}
