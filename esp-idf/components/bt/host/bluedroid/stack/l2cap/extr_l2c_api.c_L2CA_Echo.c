
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ link_state; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int tL2CA_ECHO_DATA_CB ;
typedef int UINT8 ;
struct TYPE_10__ {int * p_echo_data_cb; } ;
struct TYPE_9__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_IsDeviceUp () ;
 int BT_BD_ANY ;
 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int L2CAP_ADJ_BRCM_ID ;
 int L2CAP_TRACE_API (char*,int,int) ;
 int L2CAP_TRACE_ERROR (char*) ;
 scalar_t__ LST_CONNECTED ;
 int TRUE ;
 TYPE_6__ l2cb ;
 int l2cu_adj_id (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 int l2cu_send_peer_echo_req (TYPE_1__*,int *,int ) ;
 scalar_t__ memcmp (int ,int*,int ) ;

BOOLEAN L2CA_Echo (BD_ADDR p_bd_addr, BT_HDR *p_data, tL2CA_ECHO_DATA_CB *p_callback)
{
    tL2C_LCB *p_lcb;
    UINT8 *pp;

    L2CAP_TRACE_API ("L2CA_Echo() BDA: %08X%04X",
                     ((p_bd_addr[0] << 24) + (p_bd_addr[1] << 16) + (p_bd_addr[2] << 8) + (p_bd_addr[3])),
                     ((p_bd_addr[4] << 8) + (p_bd_addr[5])));


    if (!BTM_IsDeviceUp()) {
        return (FALSE);
    }

    if ((memcmp(BT_BD_ANY, p_bd_addr, BD_ADDR_LEN) == 0) && (p_data == ((void*)0))) {

        l2cb.p_echo_data_cb = p_callback;
        return TRUE;
    }


    if ((p_lcb = l2cu_find_lcb_by_bd_addr (p_bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        L2CAP_TRACE_ERROR ("L2CA_Echo ERROR : link not established");
        return FALSE;
    }

    if (p_lcb->link_state != LST_CONNECTED) {
        L2CAP_TRACE_ERROR ("L2CA_Echo ERROR : link is not connected");
        return FALSE;
    }


    l2cb.p_echo_data_cb = p_callback;


    pp = (UINT8 *)(p_data + 1) + p_data->offset;
    l2cu_adj_id(p_lcb, L2CAP_ADJ_BRCM_ID);
    l2cu_send_peer_echo_req (p_lcb, pp, p_data->len);

    return (TRUE);

}
