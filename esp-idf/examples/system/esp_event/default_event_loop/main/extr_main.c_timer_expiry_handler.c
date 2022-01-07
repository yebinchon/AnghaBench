
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int ,int ,...) ;
 int TAG ;
 int TIMER ;
 int TIMER_EVENTS ;
 int TIMER_EVENT_STOPPED ;
 int TIMER_EXPIRIES_COUNT ;
 int esp_event_post (int ,int ,int *,int ,int ) ;
 int esp_timer_stop (int ) ;
 int get_id_string (int ,int ) ;
 int portMAX_DELAY ;

__attribute__((used)) static void timer_expiry_handler(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    static int count = 0;

    count++;

    if (count >= TIMER_EXPIRIES_COUNT) {

        ESP_ERROR_CHECK(esp_timer_stop(TIMER));

        ESP_LOGI(TAG, "%s:%s: posting to default loop", base, get_id_string(base, TIMER_EVENT_STOPPED));


        ESP_ERROR_CHECK(esp_event_post(TIMER_EVENTS, TIMER_EVENT_STOPPED, ((void*)0), 0, portMAX_DELAY));
    }

    ESP_LOGI(TAG, "%s:%s: timer_expiry_handler, executed %d out of %d times", base, get_id_string(base, id), count, TIMER_EXPIRIES_COUNT);
}
