
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_gattc_descr_elem_t ;
typedef int esp_gatt_status_t ;
typedef int btgatt_db_element_t ;


 int BTA_GATTC_GetAllDescriptor (int,int,int **,int*) ;
 int ESP_GATT_DB_DESCRIPTOR ;
 int ESP_GATT_OK ;
 int btc_gattc_check_valid_param (int,int) ;
 int btc_gattc_fill_gatt_db_conversion (int,int,int ,int,void*,int *) ;
 int osi_free (int *) ;

esp_gatt_status_t btc_ble_gattc_get_all_descr(uint16_t conn_id,
                                              uint16_t char_handle,
                                              esp_gattc_descr_elem_t *result,
                                              uint16_t *count, uint16_t offset)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = ((void*)0);
    int descr_num = 0;
    BTA_GATTC_GetAllDescriptor(conn_id, char_handle, &db, &descr_num);

    if ((status = btc_gattc_check_valid_param(descr_num, offset)) != ESP_GATT_OK) {
        if (db) {
            osi_free(db);
        }
        *count = 0;
        return status;
    } else {
        btc_gattc_fill_gatt_db_conversion(*count, (uint16_t)descr_num, ESP_GATT_DB_DESCRIPTOR, offset, (void *)result, db);
    }

    *count = descr_num;

    if (db) {
        osi_free(db);
    }
    return ESP_GATT_OK;
}
