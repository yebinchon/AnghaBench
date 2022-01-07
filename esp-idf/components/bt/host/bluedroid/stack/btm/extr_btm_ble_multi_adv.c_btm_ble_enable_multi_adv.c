
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT8 ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BLE_MULTI_ADV_ENB ;
 int BTM_BLE_MULTI_ADV_ENB_LEN ;
 int BTM_CMD_STARTED ;
 int BTM_TRACE_EVENT (char*,int,int) ;
 int BTM_VendorSpecificCommand (int ,int,int*,int ) ;
 int HCI_BLE_MULTI_ADV_OCF ;
 int UINT8_TO_STREAM (int*,int) ;
 int btm_ble_multi_adv_enq_op_q (int,int,int) ;
 int btm_ble_multi_adv_vsc_cmpl_cback ;
 int memset (int*,int ,int) ;

tBTM_STATUS btm_ble_enable_multi_adv (BOOLEAN enable, UINT8 inst_id, UINT8 cb_evt)
{
    UINT8 param[BTM_BLE_MULTI_ADV_ENB_LEN], *pp;
    UINT8 enb = enable ? 1 : 0;
    tBTM_STATUS rt;

    pp = param;
    memset(param, 0, BTM_BLE_MULTI_ADV_ENB_LEN);

    UINT8_TO_STREAM (pp, BTM_BLE_MULTI_ADV_ENB);
    UINT8_TO_STREAM (pp, enb);
    UINT8_TO_STREAM (pp, inst_id);

    BTM_TRACE_EVENT (" btm_ble_enable_multi_adv: enb %d, Inst ID %d", enb, inst_id);

    if ((rt = BTM_VendorSpecificCommand (HCI_BLE_MULTI_ADV_OCF,
                                         BTM_BLE_MULTI_ADV_ENB_LEN,
                                         param,
                                         btm_ble_multi_adv_vsc_cmpl_cback))
            == BTM_CMD_STARTED) {
        btm_ble_multi_adv_enq_op_q(BTM_BLE_MULTI_ADV_ENB, inst_id, cb_evt);
    }
    return rt;
}
