#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ local_cid; TYPE_4__* p_lcb; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  chnl_state; TYPE_2__* p_rcb; } ;
typedef  TYPE_5__ tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_DISCONNECT_IND_CB ) (scalar_t__,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  (* tL2CA_CONNECT_CFM_CB ) (scalar_t__,int /*<<< orphan*/ ) ;
typedef  scalar_t__ UINT16 ;
struct TYPE_14__ {TYPE_5__* p_last_ccb; TYPE_5__* p_first_ccb; } ;
struct TYPE_15__ {int /*<<< orphan*/  remote_bd_addr; int /*<<< orphan*/  idle_timeout; TYPE_3__ ccb_queue; int /*<<< orphan*/  w4_info_rsp; int /*<<< orphan*/  handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* pL2CA_ConnectCfm_Cb ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  psm; TYPE_1__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_CHNL ; 
 int /*<<< orphan*/  CST_W4_L2CAP_CONNECT_RSP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_ERR_AUTH_FAILURE ; 
 int /*<<< orphan*/  L2CAP_CHNL_CONNECT_TOUT ; 
 scalar_t__ L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  L2CAP_CONN_NO_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
#define  L2CEVT_L2CAP_DATA 135 
#define  L2CEVT_L2CA_DATA_WRITE 134 
#define  L2CEVT_L2CA_DISCONNECT_REQ 133 
#define  L2CEVT_LP_CONNECT_CFM 132 
#define  L2CEVT_LP_DISCONNECT_IND 131 
#define  L2CEVT_SEC_COMP 130 
#define  L2CEVT_SEC_COMP_NEG 129 
#define  L2CEVT_SEC_RE_SEND_CMD 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  l2c_link_sec_comp ; 
 scalar_t__ FUNC7 (TYPE_5__*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = &p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    tL2CA_CONNECT_CFM_CB    *connect_cfm = &p_ccb->p_rcb->api.pL2CA_ConnectCfm_Cb;
    UINT16                  local_cid = p_ccb->local_cid;

#if (BT_TRACE_VERBOSE == TRUE)
    FUNC1 ("L2CAP - LCID: 0x%04x  st: ORIG_W4_SEC_COMP  evt: %s", p_ccb->local_cid, FUNC5 (event));
#else
    L2CAP_TRACE_EVENT ("L2CAP - st: ORIG_W4_SEC_COMP evt: %d", event);
#endif

#if (L2CAP_UCD_INCLUDED == TRUE)
    if ( local_cid == L2CAP_CONNECTIONLESS_CID ) {
        /* check if this event can be processed by UCD */
        if ( FUNC7 (p_ccb, event, p_data) ) {
            /* The event is processed by UCD state machine */
            return;
        }
    }
#endif

    switch (event) {
    case L2CEVT_LP_DISCONNECT_IND:                   /* Link was disconnected */
        FUNC0 ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        FUNC8 (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case L2CEVT_SEC_RE_SEND_CMD:                    /* BTM has enough info to proceed */
    case L2CEVT_LP_CONNECT_CFM:                     /* Link came up         */
        FUNC3 (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, TRUE, &l2c_link_sec_comp, p_ccb);
        break;

    case L2CEVT_SEC_COMP:                            /* Security completed success */
        /* Wait for the info resp in this state before sending connect req (if needed) */
        p_ccb->chnl_state = CST_W4_L2CAP_CONNECT_RSP;
        if (!p_ccb->p_lcb->w4_info_rsp) {
            /* Need to have at least one compatible channel to continue */
            if (!FUNC6(p_ccb)) {
                FUNC8 (p_ccb);
                (*connect_cfm)(local_cid, L2CAP_CONN_NO_LINK);
            } else {
                FUNC4 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
                FUNC9 (p_ccb);          /* Start Connection     */
            }
        }
        break;

    case L2CEVT_SEC_COMP_NEG:
        FUNC0 ("L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d", p_ccb->local_cid, HCI_ERR_AUTH_FAILURE);

        /* If last channel immediately disconnect the ACL for better security.
           Also prevents a race condition between BTM and L2CAP */
        if ( (p_ccb == p_ccb->p_lcb->ccb_queue.p_first_ccb) && (p_ccb == p_ccb->p_lcb->ccb_queue.p_last_ccb) ) {
            p_ccb->p_lcb->idle_timeout = 0;
        }

        FUNC8 (p_ccb);
        (*connect_cfm)(local_cid, HCI_ERR_AUTH_FAILURE);
        break;

    case L2CEVT_L2CA_DATA_WRITE:                    /* Upper layer data to send */
    case L2CEVT_L2CAP_DATA:                         /* Peer data packet rcvd    */
        FUNC10 (p_data);
        break;

    case L2CEVT_L2CA_DISCONNECT_REQ:                 /* Upper wants to disconnect */
        /* Tell security manager to abort */
        FUNC2 (p_ccb->p_lcb->remote_bd_addr);

        FUNC8 (p_ccb);
        break;
    }
}