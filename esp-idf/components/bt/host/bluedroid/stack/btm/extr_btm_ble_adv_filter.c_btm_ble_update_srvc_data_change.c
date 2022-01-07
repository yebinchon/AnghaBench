
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef scalar_t__ tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_PF_FILT_INDEX ;
struct TYPE_3__ {int target_addr; } ;
typedef TYPE_1__ tBTM_BLE_PF_COND_PARAM ;
typedef int tBLE_BD_ADDR ;
typedef int UINT8 ;


 scalar_t__ BTM_BLE_INVALID_COUNTER ;
 int BTM_BLE_PF_SRVC_DATA ;
 scalar_t__ BTM_BLE_SCAN_COND_ADD ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_SUCCESS ;
 scalar_t__ btm_ble_cs_update_pf_counter (scalar_t__,int ,int *,int) ;

tBTM_STATUS btm_ble_update_srvc_data_change(tBTM_BLE_SCAN_COND_OP action,
        tBTM_BLE_PF_FILT_INDEX filt_index,
        tBTM_BLE_PF_COND_PARAM *p_cond)
{
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    tBLE_BD_ADDR *p_bd_addr = p_cond ? &p_cond->target_addr : ((void*)0);
    UINT8 num_avail = (action == BTM_BLE_SCAN_COND_ADD) ? 0 : 1;

    if (btm_ble_cs_update_pf_counter (action, BTM_BLE_PF_SRVC_DATA, p_bd_addr, num_avail)
            != BTM_BLE_INVALID_COUNTER) {
        st = BTM_SUCCESS;
    }

    return st;
}
