
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int tBT_UUID ;
struct TYPE_8__ {int uuid; int properties; int end_handle; int start_handle; int attribute_handle; int type; } ;
typedef TYPE_2__ esp_gattc_db_elem_t ;
typedef int esp_gatt_status_t ;
struct TYPE_7__ {int uu; } ;
struct TYPE_9__ {TYPE_1__ uuid; int properties; int end_handle; int start_handle; int id; int type; } ;
typedef TYPE_3__ btgatt_db_element_t ;


 int BTA_GATTC_GetGattDb (int,int,int,TYPE_3__**,int*) ;
 int ESP_GATT_NOT_FOUND ;
 int ESP_GATT_OK ;
 int bta_to_btc_uuid (int *,int *) ;
 int btc128_to_bta_uuid (int *,int ) ;
 int osi_free (TYPE_3__*) ;

esp_gatt_status_t btc_ble_gattc_get_db(uint16_t conn_id, uint16_t start_handle, uint16_t end_handle,
                                       esp_gattc_db_elem_t *db, uint16_t *count)
{
    btgatt_db_element_t *get_db = ((void*)0);
    int num = 0;
    tBT_UUID bta_uuid;
    uint16_t db_size = 0;
    BTA_GATTC_GetGattDb(conn_id, start_handle, end_handle, &get_db, &num);

    if (num == 0) {
        if (get_db) {
            osi_free(get_db);
        }
        *count = 0;
        return ESP_GATT_NOT_FOUND;
    }

    db_size = (*count > num) ? num : (*count);
    for (int i = 0; i < db_size; i++) {
        db[i].type = get_db[i].type;
        db[i].attribute_handle = get_db[i].id;
        db[i].start_handle = get_db[i].start_handle;
        db[i].end_handle = get_db[i].end_handle;
        db[i].properties = get_db[i].properties;
        btc128_to_bta_uuid(&bta_uuid, get_db[i].uuid.uu);
        bta_to_btc_uuid(&db[i].uuid, &bta_uuid);
    }
    *count = db_size;

    if (get_db) {
        osi_free(get_db);
    }
    return ESP_GATT_OK;
}
