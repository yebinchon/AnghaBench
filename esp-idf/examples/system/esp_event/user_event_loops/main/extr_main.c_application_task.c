
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int esp_event_loop_run (int ,int) ;
 int loop_without_task ;
 int vTaskDelay (int) ;

__attribute__((used)) static void application_task(void* args)
{
    while(1) {
        ESP_LOGI(TAG, "application_task: running application task");
        esp_event_loop_run(loop_without_task, 100);
        vTaskDelay(10);
    }
}
