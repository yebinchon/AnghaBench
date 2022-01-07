
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ tBT_UUID ;
typedef int esp_gattc_descr_elem_t ;
typedef int esp_gatt_status_t ;
typedef int esp_bt_uuid_t ;
typedef int btgatt_db_element_t ;


 int BTA_GATTC_GetDescrByUUID (int,int,int,TYPE_1__,TYPE_1__,int **,int*) ;
 int ESP_GATT_DB_DESCRIPTOR ;
 int ESP_GATT_OK ;
 int btc_gattc_check_valid_param (int,int ) ;
 int btc_gattc_fill_gatt_db_conversion (int,int,int ,int ,void*,int *) ;
 int btc_to_bta_uuid (TYPE_1__*,int *) ;
 int osi_free (int *) ;

esp_gatt_status_t btc_ble_gattc_get_descr_by_uuid(uint16_t conn_id,
                                                  uint16_t start_handle,
                                                  uint16_t end_handle,
                                                  esp_bt_uuid_t char_uuid,
                                                  esp_bt_uuid_t descr_uuid,
                                                  esp_gattc_descr_elem_t *result,
                                                  uint16_t *count)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = ((void*)0);
    int descr_num = 0;
    tBT_UUID bta_char_uuid = {0};
    tBT_UUID bta_descr_uuid = {0};
    btc_to_bta_uuid(&bta_char_uuid, &char_uuid);
    btc_to_bta_uuid(&bta_descr_uuid, &descr_uuid);

    BTA_GATTC_GetDescrByUUID(conn_id, start_handle, end_handle,
                             bta_char_uuid, bta_descr_uuid, &db, &descr_num);

    if ((status = btc_gattc_check_valid_param(descr_num, 0)) != ESP_GATT_OK) {
        if (db) {
            osi_free(db);
        }
        *count = 0;
        return status;
    } else {
        btc_gattc_fill_gatt_db_conversion(*count, (uint16_t)descr_num, ESP_GATT_DB_DESCRIPTOR, 0, (void *)result, db);
    }

    *count = descr_num;

    if (db) {
        osi_free(db);
    }
    return ESP_GATT_OK;
}
