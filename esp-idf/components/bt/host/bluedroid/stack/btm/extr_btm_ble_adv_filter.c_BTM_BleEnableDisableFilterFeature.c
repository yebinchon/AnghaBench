
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_PF_STATUS_CBACK ;
typedef int UINT8 ;
struct TYPE_2__ {int * p_filt_stat_cback; } ;


 int BTM_BLE_FILT_ENABLE_DISABLE ;
 int BTM_BLE_META_PF_ENABLE ;
 int BTM_BLE_PCF_ENABLE_LEN ;
 int BTM_CMD_STARTED ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int BTM_WRONG_MODE ;
 int HCI_BLE_ADV_FILTER_OCF ;
 int UINT8_TO_STREAM (int *,int ) ;
 TYPE_1__ btm_ble_adv_filt_cb ;
 int btm_ble_advfilt_enq_op_q (int ,int ,int ,int ,int *,int *) ;
 scalar_t__ btm_ble_obtain_vsc_details () ;
 int btm_ble_scan_pf_cmpl_cback ;
 int memset (int *,int ,int) ;

tBTM_STATUS BTM_BleEnableDisableFilterFeature(UINT8 enable,
        tBTM_BLE_PF_STATUS_CBACK *p_stat_cback,
        tBTM_BLE_REF_VALUE ref_value)
{
    UINT8 param[20], *p;
    tBTM_STATUS st = BTM_WRONG_MODE;

    if (BTM_SUCCESS != btm_ble_obtain_vsc_details()) {
        return st;
    }

    p = param;
    memset(param, 0, 20);


    p = param;
    UINT8_TO_STREAM(p, BTM_BLE_META_PF_ENABLE);

    UINT8_TO_STREAM(p, enable);

    if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                         BTM_BLE_PCF_ENABLE_LEN, param,
                                         btm_ble_scan_pf_cmpl_cback)) == BTM_CMD_STARTED) {
        btm_ble_adv_filt_cb.p_filt_stat_cback = p_stat_cback;
        btm_ble_advfilt_enq_op_q(enable, BTM_BLE_META_PF_ENABLE, BTM_BLE_FILT_ENABLE_DISABLE,
                                 ref_value, ((void*)0), ((void*)0));
    }
    return st;
}
