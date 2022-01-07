
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBLE_ADDR_TYPE ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BLE_ADDR_RANDOM ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ btsnd_hcic_ble_add_white_list (scalar_t__,int ) ;
 scalar_t__ btsnd_hcic_ble_remove_from_white_list (scalar_t__,int ) ;

BOOLEAN btm_add_dev_to_controller (BOOLEAN to_add, BD_ADDR bd_addr, tBLE_ADDR_TYPE wl_addr_type)
{
    BOOLEAN started = FALSE;
    if(wl_addr_type > BLE_ADDR_RANDOM) {
        BTM_TRACE_ERROR("wl_addr_type is error\n");
        return started;
    }

    if (to_add) {
        started = btsnd_hcic_ble_add_white_list (wl_addr_type, bd_addr);
    }else{
        started = btsnd_hcic_ble_remove_from_white_list (wl_addr_type, bd_addr);
    }

    return started;


}
