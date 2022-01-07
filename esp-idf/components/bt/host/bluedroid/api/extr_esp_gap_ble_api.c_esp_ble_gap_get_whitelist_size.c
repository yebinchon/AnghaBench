
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int btc_get_whitelist_size (int *) ;

esp_err_t esp_ble_gap_get_whitelist_size(uint16_t *length)
{
    if (length == ((void*)0)) {
        return ESP_FAIL;
    }
    btc_get_whitelist_size(length);

    return ESP_OK;
}
