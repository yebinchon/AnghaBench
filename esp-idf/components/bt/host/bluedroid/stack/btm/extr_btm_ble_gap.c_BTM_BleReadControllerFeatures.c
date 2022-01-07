
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_CTRL_FEATURES_CBACK ;
struct TYPE_3__ {scalar_t__ values_read; } ;
struct TYPE_4__ {TYPE_1__ cmn_ble_vsc_cb; } ;


 scalar_t__ BTM_CMD_STARTED ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int HCI_BLE_VENDOR_CAP_OCF ;
 scalar_t__ TRUE ;
 int UNUSED (int *) ;
 int btm_ble_vendor_capability_vsc_cmpl_cback ;
 TYPE_2__ btm_cb ;
 int * p_ctrl_le_feature_rd_cmpl_cback ;

extern void BTM_BleReadControllerFeatures(tBTM_BLE_CTRL_FEATURES_CBACK *p_vsc_cback)
{
    if (TRUE == btm_cb.cmn_ble_vsc_cb.values_read) {
        return;
    }


    BTM_TRACE_DEBUG("BTM_BleReadControllerFeatures");

    p_ctrl_le_feature_rd_cmpl_cback = p_vsc_cback;
    if ( BTM_VendorSpecificCommand (HCI_BLE_VENDOR_CAP_OCF,
                                    0,
                                    ((void*)0),
                                    btm_ble_vendor_capability_vsc_cmpl_cback)
            != BTM_CMD_STARTED) {
        BTM_TRACE_ERROR("LE Get_Vendor Capabilities Command Failed.");
    }



    return ;
}
