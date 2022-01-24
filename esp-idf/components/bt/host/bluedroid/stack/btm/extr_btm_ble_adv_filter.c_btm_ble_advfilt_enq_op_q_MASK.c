#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_PARAM_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_CFG_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_FILT_CB_EVT ;
typedef  int UINT8 ;
struct TYPE_3__ {int* action_ocf; size_t next_idx; int /*<<< orphan*/ ** p_filt_param_cback; int /*<<< orphan*/ ** p_scan_cfg_cback; int /*<<< orphan*/ * cb_evt; int /*<<< orphan*/ * ref_value; } ;
struct TYPE_4__ {TYPE_1__ op_q; } ;

/* Variables and functions */
 int BTM_BLE_PF_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ btm_ble_adv_filt_cb ; 

void FUNC1(UINT8 action, UINT8 ocf, tBTM_BLE_FILT_CB_EVT cb_evt,
                              tBTM_BLE_REF_VALUE ref, tBTM_BLE_PF_CFG_CBACK *p_cmpl_cback,
                              tBTM_BLE_PF_PARAM_CBACK  *p_filt_param_cback)
{
    btm_ble_adv_filt_cb.op_q.action_ocf[btm_ble_adv_filt_cb.op_q.next_idx] = (action | (ocf << 4));
    btm_ble_adv_filt_cb.op_q.ref_value[btm_ble_adv_filt_cb.op_q.next_idx] = ref;
    btm_ble_adv_filt_cb.op_q.cb_evt[btm_ble_adv_filt_cb.op_q.next_idx] = cb_evt;
    btm_ble_adv_filt_cb.op_q.p_scan_cfg_cback[btm_ble_adv_filt_cb.op_q.next_idx] = p_cmpl_cback;
    btm_ble_adv_filt_cb.op_q.p_filt_param_cback[btm_ble_adv_filt_cb.op_q.next_idx]
        = p_filt_param_cback;
    FUNC0("btm_ble_advfilt_enq_op_q: act_ocf:%d, action:%d, ocf:%d,cb_evt;%d, cback:%p",
                    btm_ble_adv_filt_cb.op_q.action_ocf[btm_ble_adv_filt_cb.op_q.next_idx], action,
                    ocf, cb_evt, p_cmpl_cback);
    btm_ble_adv_filt_cb.op_q.next_idx = (btm_ble_adv_filt_cb.op_q.next_idx + 1)
                                        % BTM_BLE_PF_TYPE_MAX;
}