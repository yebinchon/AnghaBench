
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int base_mac_addr ;
 int memcpy (int ,int const*,int) ;

esp_err_t esp_base_mac_addr_set(const uint8_t *mac)
{
    if (mac == ((void*)0)) {
        ESP_LOGE(TAG, "Base MAC address is NULL");
        return ESP_ERR_INVALID_ARG;
    }
    if (mac[0] & 0x01) {
        ESP_LOGE(TAG, "Base MAC must be a unicast MAC");
        return ESP_ERR_INVALID_ARG;
    }

    memcpy(base_mac_addr, mac, 6);

    return ESP_OK;
}
