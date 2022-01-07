
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int TAG ;
 int TIMER ;
 int esp_timer_delete (int ) ;
 int get_id_string (int ,int ) ;

__attribute__((used)) static void timer_stopped_handler(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    ESP_LOGI(TAG, "%s:%s: timer_stopped_handler", base, get_id_string(base, id));


    esp_timer_delete(TIMER);

    ESP_LOGI(TAG, "%s:%s: deleted timer event source", base, get_id_string(base, id));
}
