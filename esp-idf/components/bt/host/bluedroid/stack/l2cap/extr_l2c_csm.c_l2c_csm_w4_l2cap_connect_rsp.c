
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int l2cap_result; int remote_cid; } ;
typedef TYPE_3__ tL2C_CONN_INFO ;
struct TYPE_13__ {int local_cid; int flags; int timer_entry; int chnl_state; int remote_cid; TYPE_2__* p_rcb; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_IND_CB ) (int,int ) ;
typedef int (* tL2CA_CONNECT_CFM_CB ) (int,int ) ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {int (* pL2CA_ConnectPnd_Cb ) (int) ;int (* pL2CA_ConnectCfm_Cb ) (int,int ) ;int (* pL2CA_DisconnectInd_Cb ) (int,int ) ;} ;
struct TYPE_11__ {TYPE_1__ api; } ;


 int BTU_TTYPE_L2CAP_CHNL ;
 int CCB_FLAG_NO_RETRY ;
 int CST_CLOSED ;
 int CST_CONFIG ;
 int CST_W4_L2CAP_DISCONNECT_RSP ;
 int FALSE ;
 int HCI_ERR_PEER_USER ;
 int L2CAP_CHNL_CFG_TIMEOUT ;
 int L2CAP_CHNL_CONNECT_TOUT ;
 int L2CAP_CHNL_CONNECT_TOUT_EXT ;
 int L2CAP_CHNL_DISCONNECT_TOUT ;
 int L2CAP_CONN_NO_LINK ;
 int L2CAP_CONN_OK ;
 int L2CAP_CONN_TIMEOUT ;
 int L2CAP_TRACE_API (char*,int,...) ;
 int L2CAP_TRACE_EVENT (char*,int,...) ;
 int btu_start_timer (int *,int ,int ) ;
 int l2c_csm_get_event_name (int) ;
 int l2c_fcr_chk_chan_modes (TYPE_4__*) ;
 int l2cu_release_ccb (TYPE_4__*) ;
 int l2cu_send_peer_connect_req (TYPE_4__*) ;
 int l2cu_send_peer_disc_req (TYPE_4__*) ;
 int osi_free (void*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;

__attribute__((used)) static void l2c_csm_w4_l2cap_connect_rsp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2C_CONN_INFO *p_ci = (tL2C_CONN_INFO *)p_data;
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    tL2CA_CONNECT_CFM_CB *connect_cfm = p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb;
    UINT16 local_cid = p_ccb->local_cid;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: W4_L2CAP_CON_RSP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));




    switch (event) {
    case 129:


        p_ccb->chnl_state = CST_CLOSED;
        if ((p_ccb->flags & CCB_FLAG_NO_RETRY) || !p_data || (*((UINT8 *)p_data) != HCI_ERR_PEER_USER)) {
            L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed",
                             p_ccb->local_cid);
            l2cu_release_ccb (p_ccb);
            (*disconnect_ind)(local_cid, FALSE);
        }
        p_ccb->flags |= CCB_FLAG_NO_RETRY;
        break;

    case 136:
        p_ccb->remote_cid = p_ci->remote_cid;
        p_ccb->chnl_state = CST_CONFIG;
        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CFG_TIMEOUT);
        L2CAP_TRACE_API ("L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Success", p_ccb->local_cid);

        (*p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb)(local_cid, L2CAP_CONN_OK);
        break;

    case 134:
        p_ccb->remote_cid = p_ci->remote_cid;
        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT_EXT);
        if (p_ccb->p_rcb->api.pL2CA_ConnectPnd_Cb) {
            L2CAP_TRACE_API ("L2CAP - Calling Connect_Pnd_Cb(), CID: 0x%04x", p_ccb->local_cid);
            (*p_ccb->p_rcb->api.pL2CA_ConnectPnd_Cb)(p_ccb->local_cid);
        }
        break;

    case 135:
        L2CAP_TRACE_API ("L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Failure Code: %d", p_ccb->local_cid, p_ci->l2cap_result);
        l2cu_release_ccb (p_ccb);
        (*connect_cfm)(local_cid, p_ci->l2cap_result);
        break;

    case 128:
        L2CAP_TRACE_API ("L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Timeout", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*connect_cfm)(local_cid, L2CAP_CONN_TIMEOUT);
        break;

    case 130:

        if (p_ccb->remote_cid != 0) {
            l2cu_send_peer_disc_req (p_ccb);
            p_ccb->chnl_state = CST_W4_L2CAP_DISCONNECT_RSP;
            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_DISCONNECT_TOUT);
        } else {
            l2cu_release_ccb (p_ccb);
        }
        break;

    case 131:
    case 133:
        osi_free (p_data);
        break;

    case 132:

        if (!l2c_fcr_chk_chan_modes(p_ccb)) {
            l2cu_release_ccb (p_ccb);
            (*connect_cfm)(local_cid, L2CAP_CONN_NO_LINK);
        } else {

            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
            l2cu_send_peer_connect_req (p_ccb);
        }
        break;
    }
}
