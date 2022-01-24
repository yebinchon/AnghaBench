#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_4__ tL2C_CONN_INFO ;
struct TYPE_19__ {scalar_t__ local_cid; TYPE_3__* p_lcb; TYPE_2__* p_rcb; void* chnl_state; int /*<<< orphan*/  timer_entry; } ;
typedef  TYPE_5__ tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_DISCONNECT_IND_CB ) (scalar_t__,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  (* tL2CA_CONNECT_CFM_CB ) (scalar_t__,int /*<<< orphan*/ ) ;
struct TYPE_20__ {void* mode; } ;
typedef  TYPE_6__ tBTM_PM_PWR_MD ;
typedef  int /*<<< orphan*/  settings ;
typedef  scalar_t__ UINT16 ;
struct TYPE_17__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  remote_bd_addr; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  w4_info_rsp; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* pL2CA_ConnectCfm_Cb ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {int /*<<< orphan*/  psm; TYPE_1__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 void* BTM_PM_MD_ACTIVE ; 
 int /*<<< orphan*/  BTM_PM_SET_ONLY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_CHNL ; 
 void* CST_ORIG_W4_SEC_COMP ; 
 void* CST_TERM_W4_SEC_COMP ; 
 void* CST_W4_L2CAP_CONNECT_RSP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_ERR_CONNECTION_EXISTS ; 
 int /*<<< orphan*/  L2CAP_CHNL_CONNECT_TOUT ; 
 scalar_t__ L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  L2CAP_CONN_NO_LINK ; 
 int /*<<< orphan*/  L2CAP_CONN_PENDING ; 
 int /*<<< orphan*/  L2CAP_CONN_SECURITY_BLOCK ; 
 int /*<<< orphan*/  L2CAP_CONN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
#define  L2CEVT_L2CAP_CONNECT_REQ 138 
#define  L2CEVT_L2CAP_DATA 137 
#define  L2CEVT_L2CA_CONNECT_REQ 136 
#define  L2CEVT_L2CA_DATA_WRITE 135 
#define  L2CEVT_L2CA_DISCONNECT_REQ 134 
#define  L2CEVT_LP_CONNECT_CFM 133 
#define  L2CEVT_LP_CONNECT_CFM_NEG 132 
#define  L2CEVT_LP_DISCONNECT_IND 131 
#define  L2CEVT_SEC_COMP 130 
#define  L2CEVT_SEC_COMP_NEG 129 
#define  L2CEVT_TIMEOUT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  l2c_link_sec_comp ; 
 scalar_t__ FUNC10 (TYPE_5__*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2C_CONN_INFO          *p_ci = (tL2C_CONN_INFO *)p_data;
    UINT16                  local_cid = p_ccb->local_cid;
    tL2CA_DISCONNECT_IND_CB *disconnect_ind;
    tL2CA_CONNECT_CFM_CB    *connect_cfm;

    if (p_ccb->p_rcb == NULL) {
#if (BT_TRACE_VERBOSE == TRUE)
        FUNC2 ("L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s p_rcb == NULL", p_ccb->local_cid, FUNC8 (event));
#else
        L2CAP_TRACE_ERROR ("L2CAP - LCID: 0x%04x  st: CLOSED  evt: 0x%04x p_rcb == NULL", p_ccb->local_cid, event);
#endif
        return;
    }

#if (L2CAP_UCD_INCLUDED == TRUE)
    if ( local_cid == L2CAP_CONNECTIONLESS_CID ) {
        /* check if this event can be processed by UCD */
        if ( FUNC10 (p_ccb, event, p_data) ) {
            /* The event is processed by UCD state machine */
            return;
        }
    }
#endif

    disconnect_ind = &p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    connect_cfm    = &p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb;

#if (BT_TRACE_VERBOSE == TRUE)
    FUNC3 ("L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s", p_ccb->local_cid, FUNC8 (event));
#else
    L2CAP_TRACE_EVENT ("L2CAP - st: CLOSED evt: %d", event);
#endif

    switch (event) {
    case L2CEVT_LP_DISCONNECT_IND:                  /* Link was disconnected */
        FUNC1 ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        FUNC11 (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case L2CEVT_LP_CONNECT_CFM:                         /* Link came up         */
        p_ccb->chnl_state = CST_ORIG_W4_SEC_COMP;
        FUNC5 (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb);
        break;

    case L2CEVT_LP_CONNECT_CFM_NEG:                     /* Link failed          */
        /* Disconnect unless ACL collision and upper layer wants to handle it */
        if (p_ci->status != HCI_ERR_CONNECTION_EXISTS
                || !FUNC4(p_ccb->p_lcb->remote_bd_addr)) {
            FUNC1 ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, p_ci->status);
            FUNC11 (p_ccb);
            (*connect_cfm)(local_cid, p_ci->status);
        }
        break;

    case L2CEVT_L2CA_CONNECT_REQ:                       /* API connect request  */
        /* Cancel sniff mode if needed */
    {
        tBTM_PM_PWR_MD settings;
// btla-specific ++
        FUNC14((void *)&settings, 0, sizeof(settings));
// btla-specific --
        settings.mode = BTM_PM_MD_ACTIVE;
        /* COVERITY
        Event uninit_use_in_call: Using uninitialized value "settings" (field "settings".timeout uninitialized) in call to function "BTM_SetPowerMode" [details]
        Event uninit_use_in_call: Using uninitialized value "settings.max" in call to function "BTM_SetPowerMode" [details]
        Event uninit_use_in_call: Using uninitialized value "settings.min" in call to function "BTM_SetPowerMode"
        // FALSE-POSITIVE error from Coverity test-tool. Please do NOT remove following comment.
        // coverity[uninit_use_in_call] False-positive: setting the mode to BTM_PM_MD_ACTIVE only uses settings.mode the other data members of tBTM_PM_PWR_MD are ignored
        */
        FUNC0 (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
    }

        /* If sec access does not result in started SEC_COM or COMP_NEG are already processed */
    if (FUNC5 (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb) == BTM_CMD_STARTED) {
        p_ccb->chnl_state = CST_ORIG_W4_SEC_COMP;
    }
    break;

    case L2CEVT_SEC_COMP:
        p_ccb->chnl_state = CST_W4_L2CAP_CONNECT_RSP;

        /* Wait for the info resp in this state before sending connect req (if needed) */
        if (!p_ccb->p_lcb->w4_info_rsp) {
            /* Need to have at least one compatible channel to continue */
            if (!FUNC9(p_ccb)) {
                FUNC11 (p_ccb);
                (*p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb)(local_cid, L2CAP_CONN_NO_LINK);
            } else {
                FUNC12 (p_ccb);
                FUNC6 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
            }
        }
        break;

    case L2CEVT_SEC_COMP_NEG:                           /* something is really bad with security */
        FUNC1 ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, L2CAP_CONN_TIMEOUT);
        FUNC11 (p_ccb);
        (*connect_cfm)(local_cid, L2CAP_CONN_SECURITY_BLOCK);
        break;

    case L2CEVT_L2CAP_CONNECT_REQ:                      /* Peer connect request */
        /* stop link timer to avoid race condition between A2MP, Security, and L2CAP */
        FUNC7 (&p_ccb->p_lcb->timer_entry);

        /* Cancel sniff mode if needed */
        {
            tBTM_PM_PWR_MD settings;
// btla-specific ++
            FUNC14((void *)&settings, 0, sizeof(settings));
// btla-specific --
            settings.mode = BTM_PM_MD_ACTIVE;
            /* COVERITY
            Event uninit_use_in_call: Using uninitialized value "settings" (field "settings".timeout uninitialized) in call to function "BTM_SetPowerMode" [details]
            Event uninit_use_in_call: Using uninitialized value "settings.max" in call to function "BTM_SetPowerMode" [details]
            Event uninit_use_in_call: Using uninitialized value "settings.min" in call to function "BTM_SetPowerMode"
            // FALSE-POSITIVE error from Coverity test-tool. Please do NOT remove following comment.
            // coverity[uninit_use_in_call] False-positive: setting the mode to BTM_PM_MD_ACTIVE only uses settings.mode the other data members of tBTM_PM_PWR_MD are ignored
            */
            FUNC0 (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
        }

        p_ccb->chnl_state = CST_TERM_W4_SEC_COMP;
        if (FUNC5 (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                      p_ccb->p_lcb->handle, FALSE, &l2c_link_sec_comp, p_ccb) == BTM_CMD_STARTED) {
            /* started the security process, tell the peer to set a longer timer */
            FUNC13(p_ccb, L2CAP_CONN_PENDING, 0);
        }
        break;

    case L2CEVT_TIMEOUT:
        FUNC1 ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, L2CAP_CONN_TIMEOUT);
        FUNC11 (p_ccb);
        (*connect_cfm)(local_cid, L2CAP_CONN_TIMEOUT);
        break;

    case L2CEVT_L2CAP_DATA:                         /* Peer data packet rcvd    */
    case L2CEVT_L2CA_DATA_WRITE:                    /* Upper layer data to send */
        FUNC15 (p_data);
        break;

    case L2CEVT_L2CA_DISCONNECT_REQ:                 /* Upper wants to disconnect */
        FUNC11 (p_ccb);
        break;
    }
}