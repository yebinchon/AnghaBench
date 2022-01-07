
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ id; } ;
typedef TYPE_3__ tL2C_LCB ;
struct TYPE_9__ {int credits; int mps; int mtu; } ;
struct TYPE_12__ {int local_cid; TYPE_2__* p_rcb; TYPE_1__ local_conn_cfg; TYPE_3__* p_lcb; scalar_t__ local_id; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {int real_psm; } ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_ADJ_ID ;
 int L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ ;
 int L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ_LEN ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_DEBUG (char*,int ,int ,int ,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (TYPE_3__*,int *,int *) ;
 int l2cu_adj_id (TYPE_3__*,int ) ;
 int * l2cu_build_header (TYPE_3__*,int ,int ,scalar_t__) ;

void l2cu_send_peer_ble_credit_based_conn_req (tL2C_CCB *p_ccb)
{
    BT_HDR *p_buf;
    UINT8 *p;
    tL2C_LCB *p_lcb = ((void*)0);
    UINT16 mtu;
    UINT16 mps;
    UINT16 initial_credit;

    if (!p_ccb) {
        return;
    }
    p_lcb = p_ccb->p_lcb;


    p_ccb->p_lcb->id++;
    l2cu_adj_id(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = l2cu_build_header (p_lcb, L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ_LEN,
                    L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ, p_lcb->id)) == ((void*)0) )
    {
        L2CAP_TRACE_WARNING ("l2cu_send_peer_ble_credit_based_conn_req - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
                               L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    mtu = p_ccb->local_conn_cfg.mtu;
    mps = p_ccb->local_conn_cfg.mps;
    initial_credit = p_ccb->local_conn_cfg.credits;

    L2CAP_TRACE_DEBUG ("l2cu_send_peer_ble_credit_based_conn_req PSM:0x%04x local_cid:%d                mtu:%d mps:%d initial_credit:%d", p_ccb->p_rcb->real_psm, p_ccb->local_cid, mtu, mps, initial_credit);



    UINT16_TO_STREAM (p, p_ccb->p_rcb->real_psm);
    UINT16_TO_STREAM (p, p_ccb->local_cid);
    UINT16_TO_STREAM (p, mtu);
    UINT16_TO_STREAM (p, mps);
    UINT16_TO_STREAM (p, initial_credit);

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
