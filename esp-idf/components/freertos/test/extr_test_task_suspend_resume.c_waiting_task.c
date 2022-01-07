
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int duration_wait_task_ms ;
 int esp_timer_get_time () ;
 int portTICK_PERIOD_MS ;
 int printf (char*,int,...) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int waiting_ms ;
 int xPortGetCoreID () ;

__attribute__((used)) static void waiting_task(void *pvParameters)
{
    int cpu_id = xPortGetCoreID();
    int64_t start_time = esp_timer_get_time();
    printf("Start waiting_task cpu=%d\n", cpu_id);

    vTaskDelay(waiting_ms / portTICK_PERIOD_MS);

    duration_wait_task_ms = (esp_timer_get_time() - start_time) / 1000;
    printf("Finish waiting_task cpu=%d, time=%d ms\n", cpu_id, duration_wait_task_ms);
    vTaskDelete(((void*)0));
}
