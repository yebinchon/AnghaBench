
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int DISCONNECT_EVENT ;
 int ESP_LOGI (int ,char*) ;
 int EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT ;
 int TAG ;
 int TEST_ESP_OK (int ) ;


 int esp_wifi_connect () ;
 int printf (char*) ;
 int wifi_event_handler_flag ;
 int wifi_events ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    printf("wifi ev_handle_called.\n");
    switch(event_id) {
        case 128:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_START");
            break;
        case 129:
            ESP_LOGI(TAG, "WIFI_EVENT_STA_DISCONNECTED");
            if (! (EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT & wifi_event_handler_flag) ) {
                TEST_ESP_OK(esp_wifi_connect());
            }
            if (wifi_events) {
                xEventGroupSetBits(wifi_events, DISCONNECT_EVENT);
            }
            break;
        default:
            break;
    }
    return;
}
