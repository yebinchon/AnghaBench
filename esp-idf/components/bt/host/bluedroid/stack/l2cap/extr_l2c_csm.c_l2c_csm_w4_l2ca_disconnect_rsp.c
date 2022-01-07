
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int local_cid; int remote_cid; int remote_id; int p_lcb; TYPE_2__* p_rcb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_IND_CB ) (int,int ) ;
typedef int UINT16 ;
struct TYPE_6__ {int (* pL2CA_DisconnectInd_Cb ) (int,int ) ;} ;
struct TYPE_7__ {TYPE_1__ api; } ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int) ;
 int L2CAP_TRACE_EVENT (char*,int,...) ;






 int l2c_csm_get_event_name (int) ;
 int l2cu_release_ccb (TYPE_3__*) ;
 int l2cu_send_peer_disc_rsp (int ,int ,int,int ) ;
 int osi_free (void*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

__attribute__((used)) static void l2c_csm_w4_l2ca_disconnect_rsp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    UINT16 local_cid = p_ccb->local_cid;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: W4_L2CA_DISC_RSP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));




    switch (event) {
    case 129:
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 128:
        l2cu_send_peer_disc_rsp (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 131:
    case 130:
        l2cu_send_peer_disc_rsp (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        l2cu_release_ccb (p_ccb);
        break;

    case 133:
    case 132:
        osi_free (p_data);
        break;
    }
}
