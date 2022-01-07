
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_BLE_VSC_CB ;
struct TYPE_2__ {int cmn_ble_vsc_cb; } ;


 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__ btm_cb ;

extern void BTM_BleGetVendorCapabilities(tBTM_BLE_VSC_CB *p_cmn_vsc_cb)
{
    BTM_TRACE_DEBUG("BTM_BleGetVendorCapabilities");

    if (((void*)0) != p_cmn_vsc_cb) {
        *p_cmn_vsc_cb = btm_cb.cmn_ble_vsc_cb;
    }
}
