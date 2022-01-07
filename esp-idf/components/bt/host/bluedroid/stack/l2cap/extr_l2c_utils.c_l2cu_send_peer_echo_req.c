
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BT_HDR ;


 int ARRAY_TO_STREAM (int *,int *,scalar_t__) ;
 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_ADJ_ZERO_ID ;
 int L2CAP_CMD_ECHO_REQ ;
 int L2CAP_CMD_OVERHEAD ;
 scalar_t__ L2CAP_ECHO_REQ_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int l2c_link_check_send_pkts (TYPE_1__*,int *,int *) ;
 int l2cu_adj_id (TYPE_1__*,int ) ;
 int * l2cu_build_header (TYPE_1__*,scalar_t__,int ,int ) ;

void l2cu_send_peer_echo_req (tL2C_LCB *p_lcb, UINT8 *p_data, UINT16 data_len)
{
    BT_HDR *p_buf;
    UINT8 *p;

    p_lcb->id++;
    l2cu_adj_id(p_lcb, L2CAP_ADJ_ZERO_ID);

    if ((p_buf = l2cu_build_header(p_lcb, (UINT16) (L2CAP_ECHO_REQ_LEN + data_len), L2CAP_CMD_ECHO_REQ, p_lcb->id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for echo_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    if (data_len) {
        ARRAY_TO_STREAM (p, p_data, data_len);
    }

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
