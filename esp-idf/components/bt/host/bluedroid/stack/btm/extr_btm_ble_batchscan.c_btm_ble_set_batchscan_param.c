
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BLE_DISCARD_RULE ;
typedef int tBTM_BLE_BATCH_SCAN_MODE ;
typedef int tBLE_ADDR_TYPE ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int own_addr_type; } ;
struct TYPE_5__ {TYPE_1__ addr_mgnt_cb; } ;
struct TYPE_6__ {TYPE_2__ ble_ctr_cb; } ;


 int BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN ;
 int BTM_BLE_BATCH_SCAN_SET_PARAMS ;
 int BTM_CMD_STARTED ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*,int ) ;
 int BTM_VendorSpecificCommand (int ,int,int *,int ) ;
 int HCI_BLE_BATCH_SCAN_OCF ;
 int UINT32_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int btm_ble_batchscan_vsc_cmpl_cback ;
 TYPE_3__ btm_cb ;
 int memset (int *,int ,int) ;

tBTM_STATUS btm_ble_set_batchscan_param(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                        UINT32 scan_interval, UINT32 scan_window, tBLE_ADDR_TYPE addr_type,
                                        tBTM_BLE_DISCARD_RULE discard_rule)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    UINT8 scan_param[BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN], *pp_scan;

    pp_scan = scan_param;
    memset(scan_param, 0, BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN);



    addr_type = btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type;

    UINT8_TO_STREAM (pp_scan, BTM_BLE_BATCH_SCAN_SET_PARAMS);
    UINT8_TO_STREAM (pp_scan, scan_mode);
    UINT32_TO_STREAM (pp_scan, scan_window);
    UINT32_TO_STREAM (pp_scan, scan_interval);
    UINT8_TO_STREAM (pp_scan, addr_type);
    UINT8_TO_STREAM (pp_scan, discard_rule);

    if ((status = BTM_VendorSpecificCommand (HCI_BLE_BATCH_SCAN_OCF,
                  BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN,
                  scan_param, btm_ble_batchscan_vsc_cmpl_cback)) != BTM_CMD_STARTED) {
        BTM_TRACE_ERROR("btm_ble_set_batchscan_param %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    return status;
}
