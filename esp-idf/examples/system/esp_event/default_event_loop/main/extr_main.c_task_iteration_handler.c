
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*,int ,int ,int) ;
 int TAG ;
 int get_id_string (int ,int ) ;

__attribute__((used)) static void task_iteration_handler(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    int iteration = *((int*) event_data);
    ESP_LOGI(TAG, "%s:%s: task_iteration_handler, executed %d times", base, get_id_string(base, id), iteration);
}
