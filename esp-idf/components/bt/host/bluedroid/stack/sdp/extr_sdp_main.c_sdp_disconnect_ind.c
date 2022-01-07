
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ con_state; int user_data; int (* p_cb2 ) (int ,int ) ;int (* p_cb ) (int ) ;} ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int L2CA_DisconnectRsp (int ) ;
 scalar_t__ SDP_CONN_FAILED ;
 scalar_t__ SDP_STATE_CONNECTED ;
 scalar_t__ SDP_SUCCESS ;
 int SDP_TRACE_EVENT (char*,int ) ;
 int SDP_TRACE_WARNING (char*,int ) ;
 TYPE_1__* sdpu_find_ccb_by_cid (int ) ;
 int sdpu_release_ccb (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void sdp_disconnect_ind (UINT16 l2cap_cid, BOOLEAN ack_needed)
{
    tCONN_CB *p_ccb;


    if ((p_ccb = sdpu_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        SDP_TRACE_WARNING ("SDP - Rcvd L2CAP disc, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }

    if (ack_needed) {
        L2CA_DisconnectRsp (l2cap_cid);
    }

    SDP_TRACE_EVENT ("SDP - Rcvd L2CAP disc, CID: 0x%x\n", l2cap_cid);


    if (p_ccb->p_cb) {
        (*p_ccb->p_cb) ((UINT16) ((p_ccb->con_state == SDP_STATE_CONNECTED) ?
                                  SDP_SUCCESS : SDP_CONN_FAILED));
    } else if (p_ccb->p_cb2) {
        (*p_ccb->p_cb2) ((UINT16) ((p_ccb->con_state == SDP_STATE_CONNECTED) ?
                                   SDP_SUCCESS : SDP_CONN_FAILED), p_ccb->user_data);
    }


    sdpu_release_ccb (p_ccb);
}
