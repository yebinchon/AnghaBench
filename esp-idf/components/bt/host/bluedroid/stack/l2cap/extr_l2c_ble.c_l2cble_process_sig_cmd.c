
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int waiting_update_conn_min_interval; int waiting_update_conn_max_interval; int waiting_update_conn_latency; int waiting_update_conn_timeout; int conn_update_mask; int upda_con_timer; int link_role; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;


 int BTM_BLE_CONN_INT_MAX ;
 int BTM_BLE_CONN_INT_MIN ;
 int BTM_BLE_CONN_LATENCY_MAX ;
 int BTM_BLE_CONN_SUP_TOUT_MAX ;
 int BTM_BLE_CONN_SUP_TOUT_MIN ;
 int BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS ;
 int CalConnectParamTimeout (TYPE_1__*) ;
 int HCI_ERR_PARAM_OUT_OF_RANGE ;
 int HCI_ROLE_MASTER ;
 int HCI_SUCCESS ;
 int L2CAP_CFG_OK ;
 int L2CAP_CFG_UNACCEPTABLE_PARAMS ;







 int L2CAP_CMD_REJ_NOT_UNDERSTOOD ;
 int L2CAP_TRACE_ERROR (char*) ;
 int L2CAP_TRACE_WARNING (char*,int,...) ;
 int L2C_BLE_NEW_CONN_PARAM ;
 int L2C_BLE_UPDATE_PARAM_FULL ;
 int L2C_BLE_UPDATE_PENDING ;
 int STREAM_TO_UINT16 (int,int*) ;
 int STREAM_TO_UINT8 (int,int*) ;
 int TRUE ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int l2c_send_update_conn_params_cb (TYPE_1__*,int) ;
 int l2cble_start_conn_update (TYPE_1__*) ;
 int l2cu_send_peer_ble_par_rsp (TYPE_1__*,int ,int) ;
 int l2cu_send_peer_cmd_reject (TYPE_1__*,int ,int,int ,int ) ;

void l2cble_process_sig_cmd (tL2C_LCB *p_lcb, UINT8 *p, UINT16 pkt_len)
{
    UINT8 *p_pkt_end;
    UINT8 cmd_code, id;
    UINT16 cmd_len;
    UINT16 min_interval, max_interval, latency, timeout;

    p_pkt_end = p + pkt_len;

    STREAM_TO_UINT8 (cmd_code, p);
    STREAM_TO_UINT8 (id, p);
    STREAM_TO_UINT16 (cmd_len, p);


    if ((p + cmd_len) > p_pkt_end) {
        L2CAP_TRACE_WARNING ("L2CAP - LE - format error, pkt_len: %d  cmd_len: %d  code: %d", pkt_len, cmd_len, cmd_code);
        return;
    }

    switch (cmd_code) {
    case 128:
    case 131:
    case 129:
        p += 2;
        break;
    case 132:
    case 130:
        l2cu_send_peer_cmd_reject (p_lcb, L2CAP_CMD_REJ_NOT_UNDERSTOOD, id, 0, 0);
        break;

    case 134:
        STREAM_TO_UINT16 (min_interval, p);
        STREAM_TO_UINT16 (max_interval, p);
        STREAM_TO_UINT16 (latency, p);
        STREAM_TO_UINT16 (timeout, p);

        if (p_lcb->link_role == HCI_ROLE_MASTER) {
            if (min_interval < BTM_BLE_CONN_INT_MIN || min_interval > BTM_BLE_CONN_INT_MAX ||
                    max_interval < BTM_BLE_CONN_INT_MIN || max_interval > BTM_BLE_CONN_INT_MAX ||
                    latency > BTM_BLE_CONN_LATENCY_MAX ||
                    timeout < BTM_BLE_CONN_SUP_TOUT_MIN || timeout > BTM_BLE_CONN_SUP_TOUT_MAX ||






                    ((timeout * 10) < ((1 + latency) *((max_interval * 5) >> 1))) ||
                    max_interval < min_interval) {
                l2cu_send_peer_ble_par_rsp (p_lcb, L2CAP_CFG_UNACCEPTABLE_PARAMS, id);

                L2CAP_TRACE_ERROR("slave connection parameters update failed, the parameters are out of range");

            } else {

                l2cu_send_peer_ble_par_rsp (p_lcb, L2CAP_CFG_OK, id);
                p_lcb->waiting_update_conn_min_interval = min_interval;
                p_lcb->waiting_update_conn_max_interval = max_interval;
                p_lcb->waiting_update_conn_latency = latency;
                p_lcb->waiting_update_conn_timeout = timeout;
                p_lcb->conn_update_mask |= L2C_BLE_NEW_CONN_PARAM;

                if (l2cble_start_conn_update(p_lcb) == TRUE) {
                    UINT32 time = CalConnectParamTimeout(p_lcb);
                    btu_start_timer(&p_lcb->upda_con_timer, BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS, time);
                }
            }
        } else {
            l2cu_send_peer_cmd_reject (p_lcb, L2CAP_CMD_REJ_NOT_UNDERSTOOD, id, 0, 0);
        }
        break;

    case 133: {
        UINT16 result = 0;
        STREAM_TO_UINT16(result, p);
        UINT8 status = (result == 0) ? HCI_SUCCESS : HCI_ERR_PARAM_OUT_OF_RANGE;
        if (status != HCI_SUCCESS) {
            btu_stop_timer(&p_lcb->upda_con_timer);
            p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PENDING;
            p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PARAM_FULL;
            l2c_send_update_conn_params_cb(p_lcb, status);
        }
        break;
    }
    default:
        L2CAP_TRACE_WARNING ("L2CAP - LE - unknown cmd code: %d", cmd_code);
        l2cu_send_peer_cmd_reject (p_lcb, L2CAP_CMD_REJ_NOT_UNDERSTOOD, id, 0, 0);
        return;
    }
}
