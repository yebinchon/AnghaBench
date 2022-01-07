
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int UINT8 ;
struct TYPE_2__ {int cur_state; int discard_rule; int addr_type; int scan_window; int scan_interval; } ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE ;
 int BTM_BLE_BATCH_SCAN_ENB_DISB_LEN ;
 int BTM_BLE_BATCH_SCAN_MODE_DISABLE ;
 int BTM_BLE_SCAN_DISABLE_CALLED ;
 int BTM_BLE_SCAN_ENABLE_CALLED ;
 int BTM_CMD_STARTED ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*,int ) ;
 int BTM_VendorSpecificCommand (int ,int,int*,int ) ;
 int HCI_BLE_BATCH_SCAN_OCF ;
 int UINT8_TO_STREAM (int*,int) ;
 TYPE_1__ ble_batchscan_cb ;
 int btm_ble_batchscan_vsc_cmpl_cback ;
 int btm_ble_set_batchscan_param (int ,int ,int ,int ,int ) ;
 int memset (int*,int ,int) ;

tBTM_STATUS btm_ble_enable_disable_batchscan(BOOLEAN should_enable)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    UINT8 shld_enable = 0x01;
    UINT8 enable_param[BTM_BLE_BATCH_SCAN_ENB_DISB_LEN], *pp_enable;

    if (!should_enable) {
        shld_enable = 0x00;
    }

    if (should_enable) {
        pp_enable = enable_param;
        memset(enable_param, 0, BTM_BLE_BATCH_SCAN_ENB_DISB_LEN);

        UINT8_TO_STREAM (pp_enable, BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE);
        UINT8_TO_STREAM (pp_enable, shld_enable);

        if ((status = BTM_VendorSpecificCommand(HCI_BLE_BATCH_SCAN_OCF,
                                                BTM_BLE_BATCH_SCAN_ENB_DISB_LEN, enable_param,
                                                btm_ble_batchscan_vsc_cmpl_cback)) != BTM_CMD_STARTED) {
            status = BTM_MODE_UNSUPPORTED;
            BTM_TRACE_ERROR("btm_ble_enable_disable_batchscan %d", status);
            return BTM_ILLEGAL_VALUE;
        }
    } else if ((status = btm_ble_set_batchscan_param(BTM_BLE_BATCH_SCAN_MODE_DISABLE,
                         ble_batchscan_cb.scan_interval, ble_batchscan_cb.scan_window,
                         ble_batchscan_cb.addr_type, ble_batchscan_cb.discard_rule)) != BTM_CMD_STARTED) {
        status = BTM_MODE_UNSUPPORTED;
        BTM_TRACE_ERROR("btm_ble_enable_disable_batchscan %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    if (should_enable) {
        ble_batchscan_cb.cur_state = BTM_BLE_SCAN_ENABLE_CALLED;
    } else {
        ble_batchscan_cb.cur_state = BTM_BLE_SCAN_DISABLE_CALLED;
    }
    return status;
}
