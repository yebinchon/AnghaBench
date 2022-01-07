
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;




 int ETH_CMD_G_MAC_ADDR ;
 int TAG ;
 int WIFI_IF_AP ;
 int esp_eth_ioctl (int ,int ,int ) ;
 int esp_wifi_set_mac (int ,int ) ;
 int esp_wifi_start () ;
 int esp_wifi_stop () ;
 int s_eth_handle ;
 int s_eth_mac ;
 int s_ethernet_is_connected ;

__attribute__((used)) static void eth_event_handler(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    switch (event_id) {
    case 131:
        ESP_LOGI(TAG, "Ethernet Link Up");
        s_ethernet_is_connected = 1;
        esp_eth_ioctl(s_eth_handle, ETH_CMD_G_MAC_ADDR, s_eth_mac);
        esp_wifi_set_mac(WIFI_IF_AP, s_eth_mac);
        ESP_ERROR_CHECK(esp_wifi_start());
        break;
    case 130:
        ESP_LOGI(TAG, "Ethernet Link Down");
        s_ethernet_is_connected = 0;
        ESP_ERROR_CHECK(esp_wifi_stop());
        break;
    case 129:
        ESP_LOGI(TAG, "Ethernet Started");
        break;
    case 128:
        ESP_LOGI(TAG, "Ethernet Stopped");
        break;
    default:
        break;
    }
}
