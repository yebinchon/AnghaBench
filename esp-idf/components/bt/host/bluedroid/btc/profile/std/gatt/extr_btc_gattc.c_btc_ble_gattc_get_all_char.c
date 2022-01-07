
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_gattc_char_elem_t ;
typedef int esp_gatt_status_t ;
typedef int btgatt_db_element_t ;


 int BTA_GATTC_GetAllChar (int,int,int,int **,int*) ;
 int ESP_GATT_DB_CHARACTERISTIC ;
 int ESP_GATT_OK ;
 int btc_gattc_check_valid_param (int,int) ;
 int btc_gattc_fill_gatt_db_conversion (int,int,int ,int,void*,int *) ;
 int osi_free (int *) ;

esp_gatt_status_t btc_ble_gattc_get_all_char(uint16_t conn_id,
                                             uint16_t start_handle,
                                             uint16_t end_handle,
                                             esp_gattc_char_elem_t *result,
                                             uint16_t *count, uint16_t offset)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = ((void*)0);
    int char_num = 0;
    BTA_GATTC_GetAllChar(conn_id, start_handle, end_handle, &db, &char_num);

    if ((status = btc_gattc_check_valid_param(char_num, offset)) != ESP_GATT_OK) {
        if (db) {
            osi_free(db);
        }
        *count = 0;
        return status;
    } else {
        btc_gattc_fill_gatt_db_conversion(*count, (uint16_t)char_num, ESP_GATT_DB_CHARACTERISTIC, offset, (void *)result, db);
    }

    *count = char_num;

    if (db) {
        osi_free(db);
    }
    return ESP_GATT_OK;
}
