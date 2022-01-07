
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int ,int ) ;
 int TAG ;
 int TIMER_EVENTS ;
 int TIMER_EVENT_EXPIRY ;
 int esp_event_post (int ,int ,int *,int ,int ) ;
 int get_id_string (int ,int ) ;
 int portMAX_DELAY ;

__attribute__((used)) static void timer_callback(void* arg)
{
    ESP_LOGI(TAG, "%s:%s: posting to default loop", TIMER_EVENTS, get_id_string(TIMER_EVENTS, TIMER_EVENT_EXPIRY));
    ESP_ERROR_CHECK(esp_event_post(TIMER_EVENTS, TIMER_EVENT_EXPIRY, ((void*)0), 0, portMAX_DELAY));
}
