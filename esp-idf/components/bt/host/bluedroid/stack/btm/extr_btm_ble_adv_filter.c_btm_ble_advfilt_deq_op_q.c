
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_PF_PARAM_CBACK ;
typedef int tBTM_BLE_PF_CFG_CBACK ;
typedef int tBTM_BLE_FILT_CB_EVT ;
typedef int UINT8 ;
struct TYPE_3__ {int* action_ocf; size_t pending_idx; int ** p_filt_param_cback; int ** p_scan_cfg_cback; int * cb_evt; int * ref_value; } ;
struct TYPE_4__ {TYPE_1__ op_q; } ;


 int BTM_BLE_ADV_FILT_SUBCODE_MASK ;
 int BTM_BLE_PF_TYPE_MAX ;
 int BTM_TRACE_DEBUG (char*,int,int,int ,int ) ;
 TYPE_2__ btm_ble_adv_filt_cb ;

void btm_ble_advfilt_deq_op_q(UINT8 *p_action, UINT8 *p_ocf, tBTM_BLE_FILT_CB_EVT *p_cb_evt,
                              tBTM_BLE_REF_VALUE *p_ref, tBTM_BLE_PF_CFG_CBACK **p_cmpl_cback,
                              tBTM_BLE_PF_PARAM_CBACK **p_filt_param_cback)
{
    *p_ocf = (btm_ble_adv_filt_cb.op_q.action_ocf[btm_ble_adv_filt_cb.op_q.pending_idx] >> 4);
    *p_action = (btm_ble_adv_filt_cb.op_q.action_ocf[btm_ble_adv_filt_cb.op_q.pending_idx]
                 & BTM_BLE_ADV_FILT_SUBCODE_MASK);
    *p_ref = btm_ble_adv_filt_cb.op_q.ref_value[btm_ble_adv_filt_cb.op_q.pending_idx];
    *p_cb_evt = btm_ble_adv_filt_cb.op_q.cb_evt[btm_ble_adv_filt_cb.op_q.pending_idx];
    *p_cmpl_cback = btm_ble_adv_filt_cb.op_q.p_scan_cfg_cback[btm_ble_adv_filt_cb.op_q.pending_idx];
    *p_filt_param_cback =
        btm_ble_adv_filt_cb.op_q.p_filt_param_cback[btm_ble_adv_filt_cb.op_q.pending_idx];

    btm_ble_adv_filt_cb.op_q.pending_idx = (btm_ble_adv_filt_cb.op_q.pending_idx + 1)
                                           % BTM_BLE_PF_TYPE_MAX;
    BTM_TRACE_DEBUG("btm_ble_advfilt_deq_op_q: ocf:%d, action:%d, ref_value:%d, cb_evt:%x",
                    *p_ocf, *p_action, *p_ref, *p_cb_evt);
}
