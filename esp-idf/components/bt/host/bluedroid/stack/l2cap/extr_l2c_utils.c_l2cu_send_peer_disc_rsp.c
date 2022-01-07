
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_CMD_DISC_RSP ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_DISC_RSP_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (int *,int *,int *) ;
 int * l2cu_build_header (int *,int ,int ,int ) ;

void l2cu_send_peer_disc_rsp (tL2C_LCB *p_lcb, UINT8 remote_id, UINT16 local_cid,
                              UINT16 remote_cid)
{
    BT_HDR *p_buf;
    UINT8 *p;

    if (!p_lcb) {
        L2CAP_TRACE_WARNING("lcb already released\n");
        return;
    }

    if ((p_buf = l2cu_build_header(p_lcb, L2CAP_DISC_RSP_LEN, L2CAP_CMD_DISC_RSP, remote_id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for disc_rsp");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, local_cid);
    UINT16_TO_STREAM (p, remote_cid);

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
