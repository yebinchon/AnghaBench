
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int CONNECTED_BIT ;
 int DISCONNECTED_BIT ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;



 int esp_wifi_connect () ;
 int reconnect ;
 int scan_done_handler () ;
 int wifi_event_group ;
 int xEventGroupClearBits (int ,int ) ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void wifi_event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    switch (event_id) {
    case 130:
        scan_done_handler();
        ESP_LOGI(TAG, "sta scan done");
        break;
    case 129:
        ESP_LOGI(TAG, "L2 connected");
        break;
    case 128:
        if (reconnect) {
            ESP_LOGI(TAG, "sta disconnect, reconnect...");
            esp_wifi_connect();
        } else {
            ESP_LOGI(TAG, "sta disconnect");
        }
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
        xEventGroupSetBits(wifi_event_group, DISCONNECTED_BIT);
        break;
    default:
        break;
    }
    return;
}
