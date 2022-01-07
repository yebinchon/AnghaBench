
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_IF_WIFI_AP ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;


 int esp_wifi_internal_reg_rxcb (int ,int *) ;
 int * pkt_wifi2eth ;
 int s_sta_is_connected ;

__attribute__((used)) static void wifi_event_handler(void *arg, esp_event_base_t event_base,
                               int32_t event_id, void *event_data)
{
    switch (event_id) {
    case 129:
        ESP_LOGI(TAG, "Wi-Fi AP got a station connected");
        s_sta_is_connected = 1;
        esp_wifi_internal_reg_rxcb(ESP_IF_WIFI_AP, pkt_wifi2eth);
        break;
    case 128:
        ESP_LOGI(TAG, "Wi-Fi AP got a station disconnected");
        s_sta_is_connected = 0;
        esp_wifi_internal_reg_rxcb(ESP_IF_WIFI_AP, ((void*)0));
        break;
    default:
        break;
    }
}
