
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ energy_support; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_ENERGY_INFO_CBACK ;
struct TYPE_5__ {int * p_ener_cback; } ;


 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 int BTM_CMD_STARTED ;
 int BTM_ERR_PROCESSING ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_TRACE_ERROR (char*,...) ;
 int BTM_TRACE_EVENT (char*) ;
 int BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int HCI_BLE_ENERGY_INFO_OCF ;
 TYPE_2__ ble_energy_info_cb ;
 int btm_ble_cont_energy_cmpl_cback ;

tBTM_STATUS BTM_BleGetEnergyInfo(tBTM_BLE_ENERGY_INFO_CBACK *p_ener_cback)
{
    tBTM_STATUS status = BTM_ILLEGAL_VALUE;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    BTM_TRACE_EVENT("BTM_BleGetEnergyInfo\n");

    if (0 == cmn_ble_vsc_cb.energy_support) {
        BTM_TRACE_ERROR("Controller does not support get energy info\n");
        return BTM_ERR_PROCESSING;
    }

    ble_energy_info_cb.p_ener_cback = p_ener_cback;
    if ((status = BTM_VendorSpecificCommand (HCI_BLE_ENERGY_INFO_OCF, 0, ((void*)0),
                  btm_ble_cont_energy_cmpl_cback)) != BTM_CMD_STARTED) {
        BTM_TRACE_ERROR("BTM_BleGetEnergyInfo status: %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    return status;
}
