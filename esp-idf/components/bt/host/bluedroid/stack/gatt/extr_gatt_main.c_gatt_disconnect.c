
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ att_lcid; int peer_bda; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_CH_STATE ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ GATT_CH_CLOSING ;
 scalar_t__ GATT_CH_OPEN ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ L2CAP_ATT_CID ;
 int L2CA_CancelBleConnectReq (int ) ;
 int L2CA_DisconnectReq (scalar_t__) ;
 int L2CA_RemoveFixedChnl (scalar_t__,int ) ;
 int TRUE ;
 scalar_t__ gatt_get_ch_state (TYPE_1__*) ;
 int gatt_set_ch_state (TYPE_1__*,scalar_t__) ;

BOOLEAN gatt_disconnect (tGATT_TCB *p_tcb)
{
    BOOLEAN ret = FALSE;
    tGATT_CH_STATE ch_state;
    GATT_TRACE_DEBUG ("gatt_disconnect ");

    if (p_tcb != ((void*)0)) {
        ret = TRUE;
        if ( (ch_state = gatt_get_ch_state(p_tcb)) != GATT_CH_CLOSING ) {
            if (p_tcb->att_lcid == L2CAP_ATT_CID) {
                if (ch_state == GATT_CH_OPEN) {

                    ret = L2CA_RemoveFixedChnl (L2CAP_ATT_CID, p_tcb->peer_bda);
                } else {
                    gatt_set_ch_state(p_tcb, GATT_CH_CLOSING);
                    ret = L2CA_CancelBleConnectReq (p_tcb->peer_bda);
                }

            } else {
                ret = L2CA_DisconnectReq(p_tcb->att_lcid);

            }
        } else {
            GATT_TRACE_DEBUG ("gatt_disconnect already in closing state");
        }
    }

    return ret;
}
