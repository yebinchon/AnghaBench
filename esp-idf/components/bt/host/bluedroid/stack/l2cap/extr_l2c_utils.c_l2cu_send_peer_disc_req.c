
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_11__ {TYPE_1__ fcr; } ;
struct TYPE_12__ {TYPE_6__* p_lcb; int xmit_hold_q; TYPE_2__ peer_cfg; int local_cid; int remote_cid; scalar_t__ local_id; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_13__ {scalar_t__ id; } ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_ADJ_ID ;
 int L2CAP_CMD_DISC_REQ ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_DISC_REQ_LEN ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int l2c_link_check_send_pkts (TYPE_6__*,TYPE_3__*,int *) ;
 int l2cu_adj_id (TYPE_6__*,int ) ;
 int * l2cu_build_header (TYPE_6__*,int ,int ,scalar_t__) ;
 int l2cu_set_acl_hci_header (int *,TYPE_3__*) ;

void l2cu_send_peer_disc_req (tL2C_CCB *p_ccb)
{
    BT_HDR *p_buf, *p_buf2;
    UINT8 *p;


    p_ccb->p_lcb->id++;
    l2cu_adj_id(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = l2cu_build_header(p_ccb->p_lcb, L2CAP_DISC_REQ_LEN, L2CAP_CMD_DISC_REQ, p_ccb->local_id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for disc_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, p_ccb->remote_cid);
    UINT16_TO_STREAM (p, p_ccb->local_cid);




    if (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_BASIC_MODE) {
        while ((p_buf2 = (BT_HDR *)fixed_queue_dequeue(p_ccb->xmit_hold_q, 0)) != ((void*)0)) {
            l2cu_set_acl_hci_header (p_buf2, p_ccb);
            l2c_link_check_send_pkts (p_ccb->p_lcb, p_ccb, p_buf2);
        }
    }

    l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), p_buf);
}
