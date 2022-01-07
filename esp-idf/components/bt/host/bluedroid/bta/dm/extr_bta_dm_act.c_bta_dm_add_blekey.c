
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_LE_KEY_VALUE ;
struct TYPE_4__ {int* bd_addr; int key_type; int blekey; } ;
struct TYPE_5__ {TYPE_1__ add_ble_key; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int APPL_TRACE_ERROR (char*,int,int) ;
 int BTM_SecAddBleKey (int*,int *,int ) ;

void bta_dm_add_blekey (tBTA_DM_MSG *p_data)
{
    if (!BTM_SecAddBleKey (p_data->add_ble_key.bd_addr,
                           (tBTM_LE_KEY_VALUE *)&p_data->add_ble_key.blekey,
                           p_data->add_ble_key.key_type)) {
        APPL_TRACE_ERROR ("BTA_DM: Error adding BLE Key for device %08x%04x",
                          (p_data->add_ble_key.bd_addr[0] << 24) + (p_data->add_ble_key.bd_addr[1] << 16) + (p_data->add_ble_key.bd_addr[2] << 8) + p_data->add_ble_key.bd_addr[3],

                          (p_data->add_ble_key.bd_addr[4] << 8) + p_data->add_ble_key.bd_addr[5]);
    }
}
