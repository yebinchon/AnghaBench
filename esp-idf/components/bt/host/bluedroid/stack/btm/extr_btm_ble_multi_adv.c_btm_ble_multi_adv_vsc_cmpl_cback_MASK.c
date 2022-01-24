#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* p_param_buf; int param_len; } ;
typedef  TYPE_1__ tBTM_VSC_CMPL ;
struct TYPE_6__ {int /*<<< orphan*/  p_ref; int /*<<< orphan*/  (* p_cback ) (int,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ tBTM_BLE_MULTI_ADV_INST ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_7__ {TYPE_2__* p_adv_inst; } ;

/* Variables and functions */
#define  BTM_BLE_MULTI_ADV_ENB 132 
 int BTM_BLE_MULTI_ADV_ENB_EVT ; 
#define  BTM_BLE_MULTI_ADV_SET_PARAM 131 
#define  BTM_BLE_MULTI_ADV_SET_RANDOM_ADDR 130 
#define  BTM_BLE_MULTI_ADV_WRITE_ADV_DATA 129 
#define  BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA 128 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*) ; 
 TYPE_3__ btm_multi_adv_cb ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 

void FUNC5 (tBTM_VSC_CMPL *p_params)
{
    UINT8  status, subcode;
    UINT8  *p = p_params->p_param_buf, inst_id;
    UINT16  len = p_params->param_len;
    tBTM_BLE_MULTI_ADV_INST *p_inst ;
    UINT8   cb_evt = 0, opcode;

    if (len  < 2) {
        FUNC1("wrong length for btm_ble_multi_adv_vsc_cmpl_cback");
        return;
    }

    FUNC2(status, p);
    FUNC2(subcode, p);

    FUNC3(&opcode, &inst_id, &cb_evt);

    FUNC0("op_code = %02x inst_id = %d cb_evt = %02x", opcode, inst_id, cb_evt);

    if (opcode != subcode || inst_id == 0) {
        FUNC1("get unexpected VSC cmpl, expect: %d get: %d", subcode, opcode);
        return;
    }

    p_inst = &btm_multi_adv_cb.p_adv_inst[inst_id - 1];

    switch (subcode) {
    case BTM_BLE_MULTI_ADV_ENB: {
        FUNC0("BTM_BLE_MULTI_ADV_ENB status = %d", status);

        /* Mark as not in use here, if instance cannot be enabled */
        if (HCI_SUCCESS != status && BTM_BLE_MULTI_ADV_ENB_EVT == cb_evt) {
            btm_multi_adv_cb.p_adv_inst[inst_id - 1].in_use = FALSE;
        }
        break;
    }

    case BTM_BLE_MULTI_ADV_SET_PARAM: {
        FUNC0("BTM_BLE_MULTI_ADV_SET_PARAM status = %d", status);
        break;
    }

    case BTM_BLE_MULTI_ADV_WRITE_ADV_DATA: {
        FUNC0("BTM_BLE_MULTI_ADV_WRITE_ADV_DATA status = %d", status);
        break;
    }

    case BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA: {
        FUNC0("BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA status = %d", status);
        break;
    }

    case BTM_BLE_MULTI_ADV_SET_RANDOM_ADDR: {
        FUNC0("BTM_BLE_MULTI_ADV_SET_RANDOM_ADDR status = %d", status);
        break;
    }

    default:
        break;
    }

    if (cb_evt != 0 && p_inst->p_cback != NULL) {
        (p_inst->p_cback)(cb_evt, inst_id, p_inst->p_ref, status);
    }
    return;
}