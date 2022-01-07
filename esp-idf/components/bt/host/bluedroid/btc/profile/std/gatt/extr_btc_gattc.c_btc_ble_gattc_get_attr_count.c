
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_gatt_status_t ;
typedef scalar_t__ esp_gatt_db_attr_type_t ;


 int BTA_GATTC_GetDBSize (int ,int ,int ,int*) ;
 int BTA_GATTC_GetDBSizeByType (int ,scalar_t__,int ,int ,int ,int*) ;
 scalar_t__ ESP_GATT_DB_ALL ;
 int ESP_GATT_OK ;

esp_gatt_status_t btc_ble_gattc_get_attr_count(uint16_t conn_id,
                                               esp_gatt_db_attr_type_t type,
                                               uint16_t start_handle,
                                               uint16_t end_handle,
                                               uint16_t char_handle,
                                               uint16_t *count)
{
    if (type == ESP_GATT_DB_ALL) {
        BTA_GATTC_GetDBSize(conn_id, start_handle, end_handle, (int *)count);
    } else {
        BTA_GATTC_GetDBSizeByType(conn_id, type, start_handle, end_handle, char_handle, (int *)count);
    }

    return ESP_GATT_OK;
}
