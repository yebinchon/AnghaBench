
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int local_cid; int remote_cid; int remote_id; int p_lcb; TYPE_1__* p_rcb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_CFM_CB ) (int,int ) ;
typedef int UINT16 ;
struct TYPE_7__ {int (* pL2CA_DisconnectCfm_Cb ) (int,int ) ;} ;
struct TYPE_6__ {TYPE_2__ api; } ;


 int L2CAP_DISC_OK ;
 int L2CAP_DISC_TIMEOUT ;
 int L2CAP_TRACE_API (char*,int) ;
 int L2CAP_TRACE_EVENT (char*,int,...) ;






 int l2c_csm_get_event_name (int) ;
 int l2cu_release_ccb (TYPE_3__*) ;
 int l2cu_send_peer_disc_rsp (int ,int ,int,int ) ;
 int osi_free (void*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;

__attribute__((used)) static void l2c_csm_w4_l2cap_disconnect_rsp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_CFM_CB *disconnect_cfm = p_ccb->p_rcb->api.pL2CA_DisconnectCfm_Cb;
    UINT16 local_cid = p_ccb->local_cid;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: W4_L2CAP_DISC_RSP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));




    switch (event) {
    case 131:
        l2cu_release_ccb (p_ccb);
        if (disconnect_cfm) {
            L2CAP_TRACE_API ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_OK);
        }
        break;

    case 132:
        l2cu_send_peer_disc_rsp (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        l2cu_release_ccb (p_ccb);
        if (disconnect_cfm) {
            L2CAP_TRACE_API ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_OK);
        }
        break;

    case 129:
    case 128:
        l2cu_release_ccb (p_ccb);
        if (disconnect_cfm) {
            L2CAP_TRACE_API ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_TIMEOUT);
        }
        break;

    case 133:
    case 130:
        osi_free (p_data);
        break;
    }
}
