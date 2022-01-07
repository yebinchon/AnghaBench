
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int credits; int mps; int mtu; } ;
struct TYPE_5__ {int p_lcb; TYPE_1__ local_conn_cfg; int local_cid; int remote_id; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES ;
 int L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES_LEN ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_DEBUG (char*) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (int ,int *,int *) ;
 int * l2cu_build_header (int ,int ,int ,int ) ;

void l2cu_send_peer_ble_credit_based_conn_res (tL2C_CCB *p_ccb, UINT16 result)
{
    BT_HDR *p_buf;
    UINT8 *p;

    L2CAP_TRACE_DEBUG ("l2cu_send_peer_ble_credit_based_conn_res");
    if ((p_buf = l2cu_build_header(p_ccb->p_lcb, L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES_LEN,
                    L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES, p_ccb->remote_id)) == ((void*)0) )
    {
        L2CAP_TRACE_WARNING ("l2cu_send_peer_ble_credit_based_conn_res - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
                               L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, p_ccb->local_cid);
    UINT16_TO_STREAM (p, p_ccb->local_conn_cfg.mtu);
    UINT16_TO_STREAM (p, p_ccb->local_conn_cfg.mps);
    UINT16_TO_STREAM (p, p_ccb->local_conn_cfg.credits);
    UINT16_TO_STREAM (p, result);

    l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), p_buf);
}
