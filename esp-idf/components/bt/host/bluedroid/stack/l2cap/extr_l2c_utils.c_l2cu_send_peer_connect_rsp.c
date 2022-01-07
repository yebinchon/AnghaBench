
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int p_lcb; int remote_cid; int local_cid; int remote_id; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int CCB_FLAG_SENT_PENDING ;
 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_CMD_CONN_RSP ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_CONN_PENDING ;
 int L2CAP_CONN_RSP_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (int ,int *,int *) ;
 int * l2cu_build_header (int ,int ,int ,int ) ;

void l2cu_send_peer_connect_rsp (tL2C_CCB *p_ccb, UINT16 result, UINT16 status)
{
    BT_HDR *p_buf;
    UINT8 *p;

    if (result == L2CAP_CONN_PENDING) {

        if (p_ccb->flags & CCB_FLAG_SENT_PENDING) {
            return;
        } else {
            p_ccb->flags |= CCB_FLAG_SENT_PENDING;
        }
    }

    if ((p_buf = l2cu_build_header(p_ccb->p_lcb, L2CAP_CONN_RSP_LEN, L2CAP_CMD_CONN_RSP, p_ccb->remote_id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for conn_rsp");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, p_ccb->local_cid);
    UINT16_TO_STREAM (p, p_ccb->remote_cid);
    UINT16_TO_STREAM (p, result);
    UINT16_TO_STREAM (p, status);

    l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), p_buf);
}
