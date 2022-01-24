#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int* p_param_buf; int param_len; } ;
typedef  TYPE_1__ tBTM_VSC_CMPL ;
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  int /*<<< orphan*/  tBTM_BLE_BATCH_SCAN_STATE ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_5__ {int cur_state; int /*<<< orphan*/  (* p_scan_rep_cback ) (int /*<<< orphan*/ ,int,int,int,int*,int) ;int /*<<< orphan*/  (* p_setup_cback ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
#define  BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE 131 
#define  BTM_BLE_BATCH_SCAN_READ_RESULTS 130 
#define  BTM_BLE_BATCH_SCAN_SET_PARAMS 129 
#define  BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM 128 
 int BTM_BLE_SCAN_DISABLED_STATE ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_DISABLE_CALLED ; 
 int BTM_BLE_SCAN_ENABLED_STATE ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_ENABLE_CALLED ; 
 void* BTM_BLE_SCAN_INVALID_STATE ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 TYPE_3__ ble_batchscan_cb ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int*,int**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int,int*,int) ; 

void FUNC12 (tBTM_VSC_CMPL *p_params)
{
    UINT8  *p = p_params->p_param_buf;
    UINT16  len = p_params->param_len;
    tBTM_BLE_REF_VALUE ref_value = 0;

    UINT8  status = 0, subcode = 0, opcode = 0;
    UINT8 report_format = 0, num_records = 0, cb_evt = 0;
    UINT16 data_len = 0;
    tBTM_BLE_BATCH_SCAN_STATE cur_state = 0;
    tBTM_STATUS btm_status = 0;
    UINT8 *p_data = NULL;

    if (len < 2) {
        FUNC1("wrong length for btm_ble_batch_scan_vsc_cmpl_cback");
        FUNC3(&opcode, &cur_state, &cb_evt, &ref_value);
        return;
    }

    FUNC2(status, p);
    FUNC2(subcode, p);

    FUNC3(&opcode, &cur_state, &cb_evt, &ref_value);

    FUNC0("btm_ble_batchscan op_code = %02x state = %02x cb_evt = %02x,ref_value=%d",
                    opcode, cur_state, cb_evt, ref_value);

    if (opcode != subcode) {
        FUNC1("Got unexpected VSC cmpl, expected: %d got: %d", subcode, opcode);
        return;
    }

    switch (subcode) {
    case BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE: {
        if (BTM_SUCCESS == status && BTM_BLE_SCAN_ENABLE_CALLED == cur_state) {
            ble_batchscan_cb.cur_state = BTM_BLE_SCAN_ENABLED_STATE;
        } else if (BTM_BLE_SCAN_ENABLE_CALLED == cur_state) {
            FUNC1("SCAN_ENB_DISAB_CUST_FEATURE - Invalid state after enb");
            ble_batchscan_cb.cur_state = BTM_BLE_SCAN_INVALID_STATE;
        }

        FUNC0("BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEAT status = %d, state: %d,evt=%d",
                        status, ble_batchscan_cb.cur_state, cb_evt);

        if (cb_evt != 0 && NULL != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM: {
        FUNC0("BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM status = %d, evt=%d",
                        status, cb_evt);
        if (cb_evt != 0 && NULL != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case BTM_BLE_BATCH_SCAN_SET_PARAMS: {
        FUNC0("BTM_BLE_BATCH_SCAN_SET_PARAMS status = %d,evt=%d", status, cb_evt);

        if (BTM_BLE_SCAN_DISABLE_CALLED == cur_state) {
            if (BTM_SUCCESS == status) {
                ble_batchscan_cb.cur_state = BTM_BLE_SCAN_DISABLED_STATE;
            } else {
                FUNC1("BTM_BLE_BATCH_SCAN_SET_PARAMS - Invalid state after disabled");
                ble_batchscan_cb.cur_state = BTM_BLE_SCAN_INVALID_STATE;
            }
        }

        if (cb_evt != 0 && NULL != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case BTM_BLE_BATCH_SCAN_READ_RESULTS: {
        if (cb_evt != 0 && NULL != ble_batchscan_cb.p_scan_rep_cback) {
            FUNC2(report_format, p);
            FUNC2(num_records, p);
            p = (uint8_t *)(p_params->p_param_buf + 4);
            FUNC0("BTM_BLE_BATCH_SCAN_READ_RESULTS status=%d,len=%d,rec=%d",
                            status, len - 4, num_records);

            if (0 == num_records) {
                FUNC4(report_format, &ref_value, &num_records,
                                               &p_data, &data_len);
                if (NULL != ble_batchscan_cb.p_scan_rep_cback) {
                    ble_batchscan_cb.p_scan_rep_cback(ref_value, report_format, num_records,
                                                      data_len, p_data, status);
                }
            } else {
                if ((len - 4) > 0) {
                    FUNC5(report_format, num_records, p, len - 4);
                    /* More records could be in the buffer and needs to be pulled out */
                    btm_status = FUNC6(report_format, ref_value);
                    if (BTM_CMD_STARTED != btm_status) {
                        FUNC4(report_format, &ref_value, &num_records,
                                                       &p_data, &data_len);
                        /* Send whatever is available, in case of a command failure */
                        if (NULL != ble_batchscan_cb.p_scan_rep_cback && NULL != p_data) {
                            ble_batchscan_cb.p_scan_rep_cback(ref_value, report_format,
                                                              num_records, data_len, p_data, status);
                        }
                    }
                }
            }
        }
        break;
    }

    default:
        break;
    }

    return;
}