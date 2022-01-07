
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_gatt_status_t ;


 int ESP_GATT_INVALID_OFFSET ;
 int ESP_GATT_NOT_FOUND ;
 int ESP_GATT_OK ;

__attribute__((used)) static esp_gatt_status_t btc_gattc_check_valid_param(int num, uint16_t offset)
{
    if (num == 0) {
        return ESP_GATT_NOT_FOUND;
    } else if (offset >= num) {
        return ESP_GATT_INVALID_OFFSET;
    }

    return ESP_GATT_OK;
}
