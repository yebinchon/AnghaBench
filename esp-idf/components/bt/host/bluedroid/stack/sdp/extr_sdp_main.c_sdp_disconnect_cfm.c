
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_data; int disconnect_reason; int (* p_cb2 ) (int ,int ) ;int (* p_cb ) (int ) ;} ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT16 ;


 int SDP_TRACE_EVENT (char*,int ,int ) ;
 int SDP_TRACE_WARNING (char*,int ) ;
 int UNUSED (int ) ;
 TYPE_1__* sdpu_find_ccb_by_cid (int ) ;
 int sdpu_release_ccb (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void sdp_disconnect_cfm (UINT16 l2cap_cid, UINT16 result)
{
    tCONN_CB *p_ccb;
    UNUSED(result);


    if ((p_ccb = sdpu_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        SDP_TRACE_WARNING ("SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }

    SDP_TRACE_EVENT ("SDP - Rcvd L2CAP disc cfm, CID: 0x%x, rsn %d\n", l2cap_cid, p_ccb->disconnect_reason);

    if (p_ccb->p_cb) {
        (*p_ccb->p_cb) (p_ccb->disconnect_reason);
    } else if (p_ccb->p_cb2) {
        (*p_ccb->p_cb2) (p_ccb->disconnect_reason, p_ccb->user_data);
    }


    sdpu_release_ccb (p_ccb);
}
