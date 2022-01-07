
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*,int ,char*,char*,int) ;
 int TAG ;
 void* loop_with_task ;

__attribute__((used)) static void task_iteration_handler(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{






    int iteration = *((int*) event_data);

    char* loop;

    if (handler_args == loop_with_task) {
        loop = "loop_with_task";
    } else {
        loop = "loop_without_task";
    }

    ESP_LOGI(TAG, "handling %s:%s from %s, iteration %d", base, "TASK_ITERATION_EVENT", loop, iteration);
}
