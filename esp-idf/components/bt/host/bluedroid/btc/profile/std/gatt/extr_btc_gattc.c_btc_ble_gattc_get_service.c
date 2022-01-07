
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int tBT_UUID ;
typedef int esp_gattc_service_elem_t ;
typedef int esp_gatt_status_t ;
typedef int esp_bt_uuid_t ;
typedef int btgatt_db_element_t ;


 int BTA_GATTC_GetServiceWithUUID (int,int *,int **,int*) ;
 int ESP_GATT_DB_PRIMARY_SERVICE ;
 int ESP_GATT_OK ;
 int btc_gattc_check_valid_param (int,int) ;
 int btc_gattc_fill_gatt_db_conversion (int,int,int ,int,void*,int *) ;
 int btc_to_bta_uuid (int *,int *) ;
 int osi_free (int *) ;
 int * osi_malloc (int) ;

esp_gatt_status_t btc_ble_gattc_get_service(uint16_t conn_id, esp_bt_uuid_t *svc_uuid,
                                                           esp_gattc_service_elem_t *result,
                                                           uint16_t *count, uint16_t offset)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = ((void*)0);
    int svc_num = 0;
    tBT_UUID *bta_uuid = ((void*)0);
    if (svc_uuid) {
        bta_uuid = osi_malloc(sizeof(tBT_UUID));
        btc_to_bta_uuid(bta_uuid, svc_uuid);
    }

    BTA_GATTC_GetServiceWithUUID(conn_id, bta_uuid, &db, &svc_num);

    if ((status = btc_gattc_check_valid_param(svc_num, offset)) != ESP_GATT_OK) {
        if (db) {
            osi_free(db);
        }
        if (bta_uuid) {
            osi_free(bta_uuid);
        }
        *count = 0;
        return status;
    } else {
        btc_gattc_fill_gatt_db_conversion(*count, (uint16_t)svc_num, ESP_GATT_DB_PRIMARY_SERVICE, offset, (void *)result, db);
    }

    *count = svc_num;

    if (db) {
        osi_free(db);
    }
    if (bta_uuid) {
        osi_free(bta_uuid);
    }
    return ESP_GATT_OK;
}
