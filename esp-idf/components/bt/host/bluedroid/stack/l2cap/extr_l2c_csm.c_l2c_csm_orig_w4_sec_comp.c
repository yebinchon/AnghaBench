
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ local_cid; TYPE_4__* p_lcb; int timer_entry; int chnl_state; TYPE_2__* p_rcb; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_IND_CB ) (scalar_t__,int ) ;
typedef int (* tL2CA_CONNECT_CFM_CB ) (scalar_t__,int ) ;
typedef scalar_t__ UINT16 ;
struct TYPE_14__ {TYPE_5__* p_last_ccb; TYPE_5__* p_first_ccb; } ;
struct TYPE_15__ {int remote_bd_addr; int idle_timeout; TYPE_3__ ccb_queue; int w4_info_rsp; int handle; } ;
struct TYPE_12__ {int (* pL2CA_ConnectCfm_Cb ) (scalar_t__,int ) ;int (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int ) ;} ;
struct TYPE_13__ {int psm; TYPE_1__ api; } ;


 int BTU_TTYPE_L2CAP_CHNL ;
 int CST_W4_L2CAP_CONNECT_RSP ;
 int FALSE ;
 int HCI_ERR_AUTH_FAILURE ;
 int L2CAP_CHNL_CONNECT_TOUT ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_CONN_NO_LINK ;
 int L2CAP_TRACE_API (char*,scalar_t__,...) ;
 int L2CAP_TRACE_EVENT (char*,scalar_t__,...) ;
 int TRUE ;
 int btm_sec_abort_access_req (int ) ;
 int btm_sec_l2cap_access_req (int ,int ,int ,int ,int *,TYPE_5__*) ;
 int btu_start_timer (int *,int ,int ) ;
 int l2c_csm_get_event_name (scalar_t__) ;
 int l2c_fcr_chk_chan_modes (TYPE_5__*) ;
 int l2c_link_sec_comp ;
 scalar_t__ l2c_ucd_process_event (TYPE_5__*,scalar_t__,void*) ;
 int l2cu_release_ccb (TYPE_5__*) ;
 int l2cu_send_peer_connect_req (TYPE_5__*) ;
 int osi_free (void*) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (scalar_t__,int ) ;

__attribute__((used)) static void l2c_csm_orig_w4_sec_comp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    tL2CA_CONNECT_CFM_CB *connect_cfm = p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb;
    UINT16 local_cid = p_ccb->local_cid;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: ORIG_W4_SEC_COMP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));





    if ( local_cid == L2CAP_CONNECTIONLESS_CID ) {

        if ( l2c_ucd_process_event (p_ccb, event, p_data) ) {

            return;
        }
    }


    switch (event) {
    case 131:
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 128:
    case 132:
        btm_sec_l2cap_access_req (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb);
        break;

    case 130:

        p_ccb->chnl_state = CST_W4_L2CAP_CONNECT_RSP;
        if (!p_ccb->p_lcb->w4_info_rsp) {

            if (!l2c_fcr_chk_chan_modes(p_ccb)) {
                l2cu_release_ccb (p_ccb);
                (*connect_cfm)(local_cid, L2CAP_CONN_NO_LINK);
            } else {
                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
                l2cu_send_peer_connect_req (p_ccb);
            }
        }
        break;

    case 129:
        L2CAP_TRACE_API ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, HCI_ERR_AUTH_FAILURE);



        if ( (p_ccb == p_ccb->p_lcb->ccb_queue.p_first_ccb) && (p_ccb == p_ccb->p_lcb->ccb_queue.p_last_ccb) ) {
            p_ccb->p_lcb->idle_timeout = 0;
        }

        l2cu_release_ccb (p_ccb);
        (*connect_cfm)(local_cid, HCI_ERR_AUTH_FAILURE);
        break;

    case 134:
    case 135:
        osi_free (p_data);
        break;

    case 133:

        btm_sec_abort_access_req (p_ccb->p_lcb->remote_bd_addr);

        l2cu_release_ccb (p_ccb);
        break;
    }
}
