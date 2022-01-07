
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* p_lcb; int local_cid; TYPE_1__* p_rcb; scalar_t__ local_id; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_7__ {int real_psm; } ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_ADJ_ID ;
 int L2CAP_CMD_CONN_REQ ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_CONN_REQ_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (TYPE_4__*,int *,int *) ;
 int l2cu_adj_id (TYPE_4__*,int ) ;
 int * l2cu_build_header (TYPE_4__*,int ,int ,scalar_t__) ;

void l2cu_send_peer_connect_req (tL2C_CCB *p_ccb)
{
    BT_HDR *p_buf;
    UINT8 *p;


    p_ccb->p_lcb->id++;
    l2cu_adj_id(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = l2cu_build_header (p_ccb->p_lcb, L2CAP_CONN_REQ_LEN, L2CAP_CMD_CONN_REQ,
                                    p_ccb->local_id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for conn_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, p_ccb->p_rcb->real_psm);
    UINT16_TO_STREAM (p, p_ccb->local_cid);

    l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), p_buf);
}
