
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {TYPE_2__* gatt_db; } ;
struct TYPE_4__ {scalar_t__ uuid_p; } ;
struct TYPE_5__ {TYPE_1__ att_desc; } ;


 int SIMPLE_BLE_MAX_GATT_TABLE_SIZE ;
 TYPE_3__* g_ble_cfg_p ;
 scalar_t__* g_gatt_table_map ;

const uint8_t *simple_ble_get_uuid128(uint16_t handle)
{
    const uint8_t *uuid128_ptr;

    for (int i = 0; i < SIMPLE_BLE_MAX_GATT_TABLE_SIZE; i++) {
        if (g_gatt_table_map[i] == handle) {
            uuid128_ptr = (const uint8_t *) g_ble_cfg_p->gatt_db[i].att_desc.uuid_p;
            return uuid128_ptr;
        }
    }
    return ((void*)0);
}
