
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT8 ;


 int BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM ;
 int BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN ;
 int BTM_CMD_STARTED ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*,int ) ;
 int BTM_VendorSpecificCommand (int ,int,int *,int ) ;
 int HCI_BLE_BATCH_SCAN_OCF ;
 int UINT8_TO_STREAM (int *,int ) ;
 int btm_ble_batchscan_vsc_cmpl_cback ;
 int memset (int *,int ,int) ;

tBTM_STATUS btm_ble_set_storage_config(UINT8 batch_scan_full_max, UINT8 batch_scan_trunc_max,
                                       UINT8 batch_scan_notify_threshold)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    UINT8 param[BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN], *pp;

    pp = param;
    memset(param, 0, BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN);

    UINT8_TO_STREAM (pp, BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM);
    UINT8_TO_STREAM (pp, batch_scan_full_max);
    UINT8_TO_STREAM (pp, batch_scan_trunc_max);
    UINT8_TO_STREAM (pp, batch_scan_notify_threshold);

    if ((status = BTM_VendorSpecificCommand (HCI_BLE_BATCH_SCAN_OCF,
                  BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN, param,
                  btm_ble_batchscan_vsc_cmpl_cback)) != BTM_CMD_STARTED) {
        BTM_TRACE_ERROR("btm_ble_set_storage_config %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    return status;
}
