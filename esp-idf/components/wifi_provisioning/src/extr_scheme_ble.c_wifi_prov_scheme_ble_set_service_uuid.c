
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int * custom_service_uuid ;

esp_err_t wifi_prov_scheme_ble_set_service_uuid(uint8_t *uuid128)
{
    if (!uuid128) {
        return ESP_ERR_INVALID_ARG;
    }
    custom_service_uuid = uuid128;
    return ESP_OK;
}
