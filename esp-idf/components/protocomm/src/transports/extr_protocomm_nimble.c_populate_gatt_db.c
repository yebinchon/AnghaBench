
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ble_gatt_svc_def {scalar_t__ characteristics; int * uuid; } ;
struct TYPE_7__ {int nu_lookup_count; TYPE_3__* service_uuid; } ;
typedef TYPE_2__ protocomm_ble_config_t ;
typedef int ble_uuid_t ;
struct TYPE_6__ {int type; } ;
struct TYPE_8__ {void* value; TYPE_1__ u; int member_0; } ;
typedef TYPE_3__ ble_uuid128_t ;


 int BLE_GATT_UUID_CHAR_DSC ;
 int BLE_UUID128_VAL_LENGTH ;
 int BLE_UUID_TYPE_128 ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int ble_gatt_add_char_dsc (void*,int,int ) ;
 int ble_gatt_add_characteristics (void*,int) ;
 int ble_gatt_add_primary_svcs (struct ble_gatt_svc_def*,int) ;
 scalar_t__ calloc (int,int) ;
 int memcpy (void*,TYPE_3__*,int) ;

__attribute__((used)) static int
populate_gatt_db(struct ble_gatt_svc_def **gatt_db_svcs, const protocomm_ble_config_t *config)
{


    *gatt_db_svcs = (struct ble_gatt_svc_def *) calloc(2, sizeof(struct ble_gatt_svc_def));
    if (*gatt_db_svcs == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for GATT services");
        return ESP_ERR_NO_MEM;
    }


    (*gatt_db_svcs)->uuid = (ble_uuid_t *) calloc(1, sizeof(ble_uuid128_t));
    if ((*gatt_db_svcs)->uuid == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for GATT service UUID");
        return ESP_ERR_NO_MEM;
    }


    ble_uuid128_t uuid128 = {0};
    uuid128.u.type = BLE_UUID_TYPE_128;
    memcpy(uuid128.value, config->service_uuid, BLE_UUID128_VAL_LENGTH);
    memcpy((void *) (*gatt_db_svcs)->uuid, &uuid128, sizeof(ble_uuid128_t));


    int rc = ble_gatt_add_primary_svcs(*gatt_db_svcs, config->nu_lookup_count);
    if (rc != 0) {
        ESP_LOGE(TAG, "Error adding primary service !!!");
        return rc;
    }

    for (int i = 0 ; i < config->nu_lookup_count; i++) {


        rc = ble_gatt_add_characteristics((void *) (*gatt_db_svcs)->characteristics, i);
        if (rc != 0) {
            ESP_LOGE(TAG, "Error adding GATT characteristic !!!");
            return rc;
        }

        rc = ble_gatt_add_char_dsc((void *) (*gatt_db_svcs)->characteristics,
                                   i, BLE_GATT_UUID_CHAR_DSC);
        if (rc != 0) {
            ESP_LOGE(TAG, "Error adding GATT Discriptor !!");
            return rc;
        }
    }
    return 0;
}
