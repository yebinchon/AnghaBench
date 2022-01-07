
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* bd_addr; int auth_mode; int addr_type; int dev_type; } ;
struct TYPE_5__ {TYPE_1__ add_ble_device; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int APPL_TRACE_ERROR (char*,int,int) ;
 int BTM_SecAddBleDevice (int*,int *,int ,int ,int ) ;

void bta_dm_add_ble_device (tBTA_DM_MSG *p_data)
{
    if (!BTM_SecAddBleDevice (p_data->add_ble_device.bd_addr, ((void*)0),
                              p_data->add_ble_device.dev_type ,
                              p_data->add_ble_device.addr_type,
                              p_data->add_ble_device.auth_mode)) {
        APPL_TRACE_ERROR ("BTA_DM: Error adding BLE Device for device %08x%04x",
                          (p_data->add_ble_device.bd_addr[0] << 24) + (p_data->add_ble_device.bd_addr[1] << 16) + (p_data->add_ble_device.bd_addr[2] << 8) + p_data->add_ble_device.bd_addr[3],

                          (p_data->add_ble_device.bd_addr[4] << 8) + p_data->add_ble_device.bd_addr[5]);
    }
}
