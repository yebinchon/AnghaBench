
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int esp_gatt_status_t ;
typedef int esp_gatt_if_t ;
typedef int esp_gatt_db_attr_type_t ;


 scalar_t__ BTC_GATT_CREATE_CONN_ID (int ,scalar_t__) ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_GATT_DB_DESCRIPTOR ;
 int ESP_GATT_INVALID_HANDLE ;
 int ESP_GATT_INVALID_PDU ;
 int btc_ble_gattc_get_attr_count (scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;

esp_gatt_status_t esp_ble_gattc_get_attr_count(esp_gatt_if_t gattc_if,
                                               uint16_t conn_id,
                                               esp_gatt_db_attr_type_t type,
                                               uint16_t start_handle,
                                               uint16_t end_handle,
                                               uint16_t char_handle,
                                               uint16_t *count)
{
    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    if ((start_handle == 0 && end_handle == 0) && (type != ESP_GATT_DB_DESCRIPTOR)) {
        *count = 0;
        return ESP_GATT_INVALID_HANDLE;
    }

    if (count == ((void*)0)) {
        return ESP_GATT_INVALID_PDU;
    }

    uint16_t conn_hdl = BTC_GATT_CREATE_CONN_ID(gattc_if, conn_id);
    return btc_ble_gattc_get_attr_count(conn_hdl, type, start_handle, end_handle, char_handle, count);
}
