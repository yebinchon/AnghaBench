
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ addr_type; int (* p_set_rand_addr_cback ) (int ) ;int address; } ;
struct TYPE_5__ {TYPE_1__ set_addr; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int APPL_TRACE_ERROR (char*,scalar_t__) ;
 scalar_t__ BLE_ADDR_RANDOM ;
 int BTM_BleSetRandAddress (int ) ;
 int BTM_SET_STATIC_RAND_ADDR_FAIL ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void bta_dm_ble_set_rand_address(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS status = BTM_SET_STATIC_RAND_ADDR_FAIL;
    if (p_data->set_addr.addr_type != BLE_ADDR_RANDOM) {
        APPL_TRACE_ERROR("Invalid random adress type = %d\n", p_data->set_addr.addr_type);
        if(p_data->set_addr.p_set_rand_addr_cback) {
            (*p_data->set_addr.p_set_rand_addr_cback)(status);
        }
        return;
    }

    status = BTM_BleSetRandAddress(p_data->set_addr.address);
    if(p_data->set_addr.p_set_rand_addr_cback) {
        (*p_data->set_addr.p_set_rand_addr_cback)(status);
    }

}
