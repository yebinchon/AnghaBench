
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;
typedef int esp_eth_handle_t ;


 int ESP_LOGI (int ,char*,...) ;




 int ETH_CMD_G_MAC_ADDR ;
 int TAG ;
 int esp_eth_ioctl (int ,int ,int *) ;

__attribute__((used)) static void eth_event_handler(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    uint8_t mac_addr[6] = {0};

    esp_eth_handle_t eth_handle = *(esp_eth_handle_t *)event_data;

    switch (event_id) {
    case 131:
        esp_eth_ioctl(eth_handle, ETH_CMD_G_MAC_ADDR, mac_addr);
        ESP_LOGI(TAG, "Ethernet Link Up");
        ESP_LOGI(TAG, "Ethernet HW Addr %02x:%02x:%02x:%02x:%02x:%02x",
                 mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
        break;
    case 130:
        ESP_LOGI(TAG, "Ethernet Link Down");
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
