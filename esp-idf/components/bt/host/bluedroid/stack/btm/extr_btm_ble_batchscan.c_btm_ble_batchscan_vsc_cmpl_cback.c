
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* p_param_buf; int param_len; } ;
typedef TYPE_1__ tBTM_VSC_CMPL ;
typedef int tBTM_STATUS ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_BATCH_SCAN_STATE ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {int cur_state; int (* p_scan_rep_cback ) (int ,int,int,int,int*,int) ;int (* p_setup_cback ) (int,int ,int) ;} ;






 int BTM_BLE_SCAN_DISABLED_STATE ;
 int BTM_BLE_SCAN_DISABLE_CALLED ;
 int BTM_BLE_SCAN_ENABLED_STATE ;
 int BTM_BLE_SCAN_ENABLE_CALLED ;
 void* BTM_BLE_SCAN_INVALID_STATE ;
 int BTM_CMD_STARTED ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,int,int,...) ;
 int BTM_TRACE_ERROR (char*,...) ;
 int STREAM_TO_UINT8 (int,int*) ;
 TYPE_3__ ble_batchscan_cb ;
 int btm_ble_batchscan_deq_op_q (int*,int *,int*,int *) ;
 int btm_ble_batchscan_deq_rep_data (int,int *,int*,int**,int*) ;
 int btm_ble_batchscan_enq_rep_data (int,int,int*,int) ;
 int btm_ble_read_batchscan_reports (int,int ) ;
 int stub1 (int,int ,int) ;
 int stub2 (int,int ,int) ;
 int stub3 (int,int ,int) ;
 int stub4 (int ,int,int,int,int*,int) ;
 int stub5 (int ,int,int,int,int*,int) ;

void btm_ble_batchscan_vsc_cmpl_cback (tBTM_VSC_CMPL *p_params)
{
    UINT8 *p = p_params->p_param_buf;
    UINT16 len = p_params->param_len;
    tBTM_BLE_REF_VALUE ref_value = 0;

    UINT8 status = 0, subcode = 0, opcode = 0;
    UINT8 report_format = 0, num_records = 0, cb_evt = 0;
    UINT16 data_len = 0;
    tBTM_BLE_BATCH_SCAN_STATE cur_state = 0;
    tBTM_STATUS btm_status = 0;
    UINT8 *p_data = ((void*)0);

    if (len < 2) {
        BTM_TRACE_ERROR("wrong length for btm_ble_batch_scan_vsc_cmpl_cback");
        btm_ble_batchscan_deq_op_q(&opcode, &cur_state, &cb_evt, &ref_value);
        return;
    }

    STREAM_TO_UINT8(status, p);
    STREAM_TO_UINT8(subcode, p);

    btm_ble_batchscan_deq_op_q(&opcode, &cur_state, &cb_evt, &ref_value);

    BTM_TRACE_DEBUG("btm_ble_batchscan op_code = %02x state = %02x cb_evt = %02x,ref_value=%d",
                    opcode, cur_state, cb_evt, ref_value);

    if (opcode != subcode) {
        BTM_TRACE_ERROR("Got unexpected VSC cmpl, expected: %d got: %d", subcode, opcode);
        return;
    }

    switch (subcode) {
    case 131: {
        if (BTM_SUCCESS == status && BTM_BLE_SCAN_ENABLE_CALLED == cur_state) {
            ble_batchscan_cb.cur_state = BTM_BLE_SCAN_ENABLED_STATE;
        } else if (BTM_BLE_SCAN_ENABLE_CALLED == cur_state) {
            BTM_TRACE_ERROR("SCAN_ENB_DISAB_CUST_FEATURE - Invalid state after enb");
            ble_batchscan_cb.cur_state = BTM_BLE_SCAN_INVALID_STATE;
        }

        BTM_TRACE_DEBUG("BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEAT status = %d, state: %d,evt=%d",
                        status, ble_batchscan_cb.cur_state, cb_evt);

        if (cb_evt != 0 && ((void*)0) != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case 128: {
        BTM_TRACE_DEBUG("BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM status = %d, evt=%d",
                        status, cb_evt);
        if (cb_evt != 0 && ((void*)0) != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case 129: {
        BTM_TRACE_DEBUG("BTM_BLE_BATCH_SCAN_SET_PARAMS status = %d,evt=%d", status, cb_evt);

        if (BTM_BLE_SCAN_DISABLE_CALLED == cur_state) {
            if (BTM_SUCCESS == status) {
                ble_batchscan_cb.cur_state = BTM_BLE_SCAN_DISABLED_STATE;
            } else {
                BTM_TRACE_ERROR("BTM_BLE_BATCH_SCAN_SET_PARAMS - Invalid state after disabled");
                ble_batchscan_cb.cur_state = BTM_BLE_SCAN_INVALID_STATE;
            }
        }

        if (cb_evt != 0 && ((void*)0) != ble_batchscan_cb.p_setup_cback) {
            ble_batchscan_cb.p_setup_cback(cb_evt, ref_value, status);
        }
        break;
    }

    case 130: {
        if (cb_evt != 0 && ((void*)0) != ble_batchscan_cb.p_scan_rep_cback) {
            STREAM_TO_UINT8(report_format, p);
            STREAM_TO_UINT8(num_records, p);
            p = (uint8_t *)(p_params->p_param_buf + 4);
            BTM_TRACE_DEBUG("BTM_BLE_BATCH_SCAN_READ_RESULTS status=%d,len=%d,rec=%d",
                            status, len - 4, num_records);

            if (0 == num_records) {
                btm_ble_batchscan_deq_rep_data(report_format, &ref_value, &num_records,
                                               &p_data, &data_len);
                if (((void*)0) != ble_batchscan_cb.p_scan_rep_cback) {
                    ble_batchscan_cb.p_scan_rep_cback(ref_value, report_format, num_records,
                                                      data_len, p_data, status);
                }
            } else {
                if ((len - 4) > 0) {
                    btm_ble_batchscan_enq_rep_data(report_format, num_records, p, len - 4);

                    btm_status = btm_ble_read_batchscan_reports(report_format, ref_value);
                    if (BTM_CMD_STARTED != btm_status) {
                        btm_ble_batchscan_deq_rep_data(report_format, &ref_value, &num_records,
                                                       &p_data, &data_len);

                        if (((void*)0) != ble_batchscan_cb.p_scan_rep_cback && ((void*)0) != p_data) {
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
