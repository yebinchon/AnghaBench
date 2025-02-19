
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_CMD_BLE_UPDATE_RSP ;
 int L2CAP_CMD_BLE_UPD_RSP_LEN ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (int *,int *,int *) ;
 int * l2cu_build_header (int *,int ,int ,int ) ;

void l2cu_send_peer_ble_par_rsp (tL2C_LCB *p_lcb, UINT16 reason, UINT8 rem_id)
{
    BT_HDR *p_buf;
    UINT8 *p;

    if ((p_buf = l2cu_build_header (p_lcb, L2CAP_CMD_BLE_UPD_RSP_LEN,
                                    L2CAP_CMD_BLE_UPDATE_RSP, rem_id)) == ((void*)0) ) {
        L2CAP_TRACE_WARNING ("l2cu_send_peer_ble_par_rsp - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, reason);

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
