
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int status; } ;
typedef TYPE_4__ tL2C_CONN_INFO ;
struct TYPE_19__ {scalar_t__ local_cid; TYPE_3__* p_lcb; TYPE_2__* p_rcb; void* chnl_state; int timer_entry; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_IND_CB ) (scalar_t__,int ) ;
typedef int (* tL2CA_CONNECT_CFM_CB ) (scalar_t__,int ) ;
struct TYPE_20__ {void* mode; } ;
typedef TYPE_6__ tBTM_PM_PWR_MD ;
typedef int settings ;
typedef scalar_t__ UINT16 ;
struct TYPE_17__ {int handle; int remote_bd_addr; int timer_entry; int w4_info_rsp; } ;
struct TYPE_15__ {int (* pL2CA_ConnectCfm_Cb ) (scalar_t__,int ) ;int (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int ) ;} ;
struct TYPE_16__ {int psm; TYPE_1__ api; } ;


 int BTM_CMD_STARTED ;
 void* BTM_PM_MD_ACTIVE ;
 int BTM_PM_SET_ONLY_ID ;
 int BTM_SetPowerMode (int ,int ,TYPE_6__*) ;
 int BTU_TTYPE_L2CAP_CHNL ;
 void* CST_ORIG_W4_SEC_COMP ;
 void* CST_TERM_W4_SEC_COMP ;
 void* CST_W4_L2CAP_CONNECT_RSP ;
 int FALSE ;
 int HCI_ERR_CONNECTION_EXISTS ;
 int L2CAP_CHNL_CONNECT_TOUT ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_CONN_NO_LINK ;
 int L2CAP_CONN_PENDING ;
 int L2CAP_CONN_SECURITY_BLOCK ;
 int L2CAP_CONN_TIMEOUT ;
 int L2CAP_TRACE_API (char*,scalar_t__,...) ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__,scalar_t__) ;
 int L2CAP_TRACE_EVENT (char*,scalar_t__,...) ;
 int TRUE ;
 int btm_acl_notif_conn_collision (int ) ;
 int btm_sec_l2cap_access_req (int ,int ,int ,int ,int *,TYPE_5__*) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 scalar_t__ l2c_csm_get_event_name (scalar_t__) ;
 int l2c_fcr_chk_chan_modes (TYPE_5__*) ;
 int l2c_link_sec_comp ;
 scalar_t__ l2c_ucd_process_event (TYPE_5__*,scalar_t__,void*) ;
 int l2cu_release_ccb (TYPE_5__*) ;
 int l2cu_send_peer_connect_req (TYPE_5__*) ;
 int l2cu_send_peer_connect_rsp (TYPE_5__*,int ,int ) ;
 int memset (void*,int ,int) ;
 int osi_free (void*) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (scalar_t__,int ) ;
 int stub4 (scalar_t__,int ) ;
 int stub5 (scalar_t__,int ) ;

__attribute__((used)) static void l2c_csm_closed (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2C_CONN_INFO *p_ci = (tL2C_CONN_INFO *)p_data;
    UINT16 local_cid = p_ccb->local_cid;
    tL2CA_DISCONNECT_IND_CB *disconnect_ind;
    tL2CA_CONNECT_CFM_CB *connect_cfm;

    if (p_ccb->p_rcb == ((void*)0)) {

        L2CAP_TRACE_ERROR ("L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s p_rcb == NULL", p_ccb->local_cid, l2c_csm_get_event_name (event));



        return;
    }


    if ( local_cid == L2CAP_CONNECTIONLESS_CID ) {

        if ( l2c_ucd_process_event (p_ccb, event, p_data) ) {

            return;
        }
    }


    disconnect_ind = p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    connect_cfm = p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));




    switch (event) {
    case 131:
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 133:
        p_ccb->chnl_state = CST_ORIG_W4_SEC_COMP;
        btm_sec_l2cap_access_req (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb);
        break;

    case 132:

        if (p_ci->status != HCI_ERR_CONNECTION_EXISTS
                || !btm_acl_notif_conn_collision(p_ccb->p_lcb->remote_bd_addr)) {
            L2CAP_TRACE_API ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, p_ci->status);
            l2cu_release_ccb (p_ccb);
            (*connect_cfm)(local_cid, p_ci->status);
        }
        break;

    case 136:

    {
        tBTM_PM_PWR_MD settings;

        memset((void *)&settings, 0, sizeof(settings));

        settings.mode = BTM_PM_MD_ACTIVE;







        BTM_SetPowerMode (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
    }


    if (btm_sec_l2cap_access_req (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb) == BTM_CMD_STARTED) {
        p_ccb->chnl_state = CST_ORIG_W4_SEC_COMP;
    }
    break;

    case 130:
        p_ccb->chnl_state = CST_W4_L2CAP_CONNECT_RSP;


        if (!p_ccb->p_lcb->w4_info_rsp) {

            if (!l2c_fcr_chk_chan_modes(p_ccb)) {
                l2cu_release_ccb (p_ccb);
                (*p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb)(local_cid, L2CAP_CONN_NO_LINK);
            } else {
                l2cu_send_peer_connect_req (p_ccb);
                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
            }
        }
        break;

    case 129:
        L2CAP_TRACE_API ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, L2CAP_CONN_TIMEOUT);
        l2cu_release_ccb (p_ccb);
        (*connect_cfm)(local_cid, L2CAP_CONN_SECURITY_BLOCK);
        break;

    case 138:

        btu_stop_timer (&p_ccb->p_lcb->timer_entry);


        {
            tBTM_PM_PWR_MD settings;

            memset((void *)&settings, 0, sizeof(settings));

            settings.mode = BTM_PM_MD_ACTIVE;







            BTM_SetPowerMode (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
        }

        p_ccb->chnl_state = CST_TERM_W4_SEC_COMP;
        if (btm_sec_l2cap_access_req (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                      p_ccb->p_lcb->handle, FALSE, &l2c_link_sec_comp, p_ccb) == BTM_CMD_STARTED) {

            l2cu_send_peer_connect_rsp(p_ccb, L2CAP_CONN_PENDING, 0);
        }
        break;

    case 128:
        L2CAP_TRACE_API ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, L2CAP_CONN_TIMEOUT);
        l2cu_release_ccb (p_ccb);
        (*connect_cfm)(local_cid, L2CAP_CONN_TIMEOUT);
        break;

    case 137:
    case 135:
        osi_free (p_data);
        break;

    case 134:
        l2cu_release_ccb (p_ccb);
        break;
    }
}
