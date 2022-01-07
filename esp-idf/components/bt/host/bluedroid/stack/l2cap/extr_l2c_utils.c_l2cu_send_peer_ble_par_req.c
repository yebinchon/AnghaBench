
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_ADJ_ID ;
 int L2CAP_CMD_BLE_UPDATE_REQ ;
 int L2CAP_CMD_BLE_UPD_REQ_LEN ;
 int L2CAP_CMD_OVERHEAD ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int l2c_link_check_send_pkts (TYPE_1__*,int *,int *) ;
 int l2cu_adj_id (TYPE_1__*,int ) ;
 int * l2cu_build_header (TYPE_1__*,int ,int ,int ) ;

void l2cu_send_peer_ble_par_req (tL2C_LCB *p_lcb, UINT16 min_int, UINT16 max_int,
                                 UINT16 latency, UINT16 timeout)
{
    BT_HDR *p_buf;
    UINT8 *p;


    p_lcb->id++;
    l2cu_adj_id (p_lcb, L2CAP_ADJ_ID);

    if ((p_buf = l2cu_build_header (p_lcb, L2CAP_CMD_BLE_UPD_REQ_LEN,
                                    L2CAP_CMD_BLE_UPDATE_REQ, p_lcb->id)) == ((void*)0) ) {
        L2CAP_TRACE_WARNING ("l2cu_send_peer_ble_par_req - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, min_int);
    UINT16_TO_STREAM (p, max_int);
    UINT16_TO_STREAM (p, latency);
    UINT16_TO_STREAM (p, timeout);

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
