
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int esp_gatt_status_t ;


 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 scalar_t__ ESP_GATT_ILLEGAL_HANDLE ;
 int ESP_GATT_INVALID_HANDLE ;
 int btc_gatts_get_attr_value (scalar_t__,scalar_t__*,int **) ;

esp_gatt_status_t esp_ble_gatts_get_attr_value(uint16_t attr_handle, uint16_t *length, const uint8_t **value)
{
    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    if (attr_handle == ESP_GATT_ILLEGAL_HANDLE) {
        *length = 0;
        return ESP_GATT_INVALID_HANDLE;
    }

    return btc_gatts_get_attr_value(attr_handle, length, (uint8_t **)value);
}
