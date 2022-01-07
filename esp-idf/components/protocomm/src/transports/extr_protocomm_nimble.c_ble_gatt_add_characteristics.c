
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ble_gatt_chr_def {int flags; int * uuid; int access_cb; } ;
typedef int ble_uuid_t ;
struct TYPE_7__ {int type; } ;
struct TYPE_9__ {void* value; TYPE_1__ u; int member_0; } ;
typedef TYPE_3__ ble_uuid128_t ;
struct TYPE_10__ {TYPE_2__* g_nu_lookup; } ;
struct TYPE_8__ {TYPE_3__ uuid; } ;


 int BLE_GATT_CHR_F_READ ;
 int BLE_GATT_CHR_F_WRITE ;
 int BLE_UUID128_VAL_LENGTH ;
 int BLE_UUID_TYPE_128 ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 TYPE_3__* ble_uuid_base ;
 scalar_t__ calloc (int,int) ;
 int gatt_svr_chr_access ;
 int memcpy (void*,TYPE_3__*,int) ;
 TYPE_4__* protoble_internal ;

__attribute__((used)) static int
ble_gatt_add_characteristics(struct ble_gatt_chr_def *characteristics, int idx)
{



    ble_uuid128_t temp_uuid128_name = {0};
    temp_uuid128_name.u.type = BLE_UUID_TYPE_128;
    memcpy(temp_uuid128_name.value, ble_uuid_base, BLE_UUID128_VAL_LENGTH);
    memcpy(&temp_uuid128_name.value[12], &protoble_internal->g_nu_lookup[idx].uuid, 2);

    (characteristics + idx)->flags = BLE_GATT_CHR_F_READ | BLE_GATT_CHR_F_WRITE;
    (characteristics + idx)->access_cb = gatt_svr_chr_access;





    (characteristics + idx)->uuid = (ble_uuid_t *)calloc(1,
                                    sizeof(ble_uuid128_t));
    if ((characteristics + idx)->uuid == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for characteristic UUID");
        return ESP_ERR_NO_MEM;
    }
    memcpy((void *)(characteristics + idx)->uuid, &temp_uuid128_name,
           sizeof(ble_uuid128_t));

    return 0;
}
