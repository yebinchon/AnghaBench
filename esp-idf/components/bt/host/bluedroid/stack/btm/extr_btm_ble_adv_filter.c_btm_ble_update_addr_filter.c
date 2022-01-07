
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_PF_FILT_INDEX ;
struct TYPE_6__ {int type; int bda; } ;
struct TYPE_5__ {TYPE_2__ target_addr; } ;
typedef TYPE_1__ tBTM_BLE_PF_COND_PARAM ;
typedef TYPE_2__ tBLE_BD_ADDR ;
typedef int UINT8 ;
struct TYPE_7__ {int cur_filter_target; } ;


 int BDADDR_TO_STREAM (int *,int ) ;
 int BTM_BLE_ADV_FILT_META_HDR_LENGTH ;
 int BTM_BLE_META_ADDR_LEN ;
 int BTM_BLE_META_PF_ADDR ;
 int BTM_BLE_SCAN_COND_ADD ;
 int BTM_BLE_SCAN_COND_DELETE ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int HCI_BLE_ADV_FILTER_OCF ;
 int UINT8_TO_STREAM (int *,int ) ;
 TYPE_4__ btm_ble_adv_filt_cb ;
 int btm_ble_scan_pf_cmpl_cback ;
 int memset (int *,int ,int) ;

tBTM_STATUS btm_ble_update_addr_filter(tBTM_BLE_SCAN_COND_OP action,
                                       tBTM_BLE_PF_FILT_INDEX filt_index,
                                       tBTM_BLE_PF_COND_PARAM *p_cond)
{
    UINT8 param[BTM_BLE_META_ADDR_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH],
                * p = param;
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    tBLE_BD_ADDR *p_addr = (p_cond == ((void*)0)) ? ((void*)0) : &p_cond->target_addr;

    memset(param, 0, BTM_BLE_META_ADDR_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH);

    UINT8_TO_STREAM(p, BTM_BLE_META_PF_ADDR);
    UINT8_TO_STREAM(p, action);


    UINT8_TO_STREAM(p, filt_index);

    if (BTM_BLE_SCAN_COND_ADD == action ||
            BTM_BLE_SCAN_COND_DELETE == action) {
        if (((void*)0) == p_addr) {
            return st;
        }

        BDADDR_TO_STREAM(p, p_addr->bda);
        UINT8_TO_STREAM(p, p_addr->type);
    }

    if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                         (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_META_ADDR_LEN),
                                         param,
                                         btm_ble_scan_pf_cmpl_cback)) != BTM_NO_RESOURCES) {
        memset(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
    } else {
        BTM_TRACE_ERROR("Broadcaster Address Filter Update failed");
    }
    return st;
}
