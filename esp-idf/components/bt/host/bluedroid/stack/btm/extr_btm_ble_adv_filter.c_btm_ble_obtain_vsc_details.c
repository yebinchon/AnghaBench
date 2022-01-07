
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {scalar_t__ max_filter; } ;


 scalar_t__ BTM_BLE_MAX_FILTER_COUNTER ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_SUCCESS ;
 TYPE_1__ cmn_ble_adv_vsc_cb ;

tBTM_STATUS btm_ble_obtain_vsc_details(void)
{
    tBTM_STATUS st = BTM_SUCCESS;


    BTM_BleGetVendorCapabilities(&cmn_ble_adv_vsc_cb);
    if (0 == cmn_ble_adv_vsc_cb.max_filter) {
        st = BTM_MODE_UNSUPPORTED;
        return st;
    }



    return st;
}
