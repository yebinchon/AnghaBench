#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ tL2C_CONN_INFO ;
struct TYPE_14__ {scalar_t__ local_cid; TYPE_5__* p_lcb; TYPE_2__* p_rcb; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  remote_cid; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  chnl_state; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int UINT16 ;
struct TYPE_15__ {scalar_t__ handle; int /*<<< orphan*/  remote_bd_addr; int /*<<< orphan*/  w4_info_rsp; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* pL2CA_ConnectInd_Cb ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  psm; TYPE_1__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_DELAY_CHECK ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_CHNL ; 
 int /*<<< orphan*/  CST_W4_L2CA_CONNECT_RSP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_ERR_AUTH_FAILURE ; 
 int L2CAP_CHNL_CONNECT_TOUT ; 
 scalar_t__ L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  L2CAP_CONN_PENDING ; 
 int /*<<< orphan*/  L2CAP_CONN_SECURITY_BLOCK ; 
 int L2CAP_DELAY_CHECK_SM4 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
#define  L2CEVT_L2CAP_DATA 136 
#define  L2CEVT_L2CAP_DISCONNECT_REQ 135 
#define  L2CEVT_L2CA_DATA_WRITE 134 
#define  L2CEVT_L2CA_DISCONNECT_REQ 133 
#define  L2CEVT_LP_DISCONNECT_IND 132 
#define  L2CEVT_SEC_COMP 131 
#define  L2CEVT_SEC_COMP_NEG 130 
#define  L2CEVT_SEC_RE_SEND_CMD 129 
#define  L2CEVT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  l2c_link_sec_comp ; 
 scalar_t__ FUNC7 (TYPE_4__*,int,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
#if (BT_TRACE_VERBOSE == TRUE)
    FUNC1 ("L2CAP - LCID: 0x%04x  st: TERM_W4_SEC_COMP  evt: %s", p_ccb->local_cid, FUNC6 (event));
#else
    L2CAP_TRACE_EVENT ("L2CAP - st: TERM_W4_SEC_COMP evt: %d", event);
#endif

#if (L2CAP_UCD_INCLUDED == TRUE)
    if ( p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID ) {
        /* check if this event can be processed by UCD */
        if ( FUNC7 (p_ccb, event, p_data) ) {
            /* The event is processed by UCD state machine */
            return;
        }
    }
#endif

    switch (event) {
    case L2CEVT_LP_DISCONNECT_IND:                  /* Link was disconnected */
        /* Tell security manager to abort */
        FUNC2 (p_ccb->p_lcb->remote_bd_addr);

        FUNC8 (p_ccb);
        break;

    case L2CEVT_SEC_COMP:
        p_ccb->chnl_state = CST_W4_L2CA_CONNECT_RSP;

        /* Wait for the info resp in next state before sending connect ind (if needed) */
        if (!p_ccb->p_lcb->w4_info_rsp) {
            /* Don't need to get info from peer or already retrieved so continue */
            FUNC5 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
            FUNC0 ("L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x", p_ccb->local_cid);

            (*p_ccb->p_rcb->api.pL2CA_ConnectInd_Cb) (p_ccb->p_lcb->remote_bd_addr, p_ccb->local_cid,
                    p_ccb->p_rcb->psm, p_ccb->remote_id);
        } else {
            /*
            ** L2CAP Connect Response will be sent out by 3 sec timer expiration
            ** because Bluesoleil doesn't respond to L2CAP Information Request.
            ** Bluesoleil seems to disconnect ACL link as failure case, because
            ** it takes too long (4~7secs) to get response.
            ** product version : Bluesoleil 2.1.1.0 EDR Release 060123
            ** stack version   : 05.04.11.20060119
            */

            /* Waiting for the info resp, tell the peer to set a longer timer */
            FUNC9(p_ccb, L2CAP_CONN_PENDING, 0);
        }
        break;

    case L2CEVT_SEC_COMP_NEG:
        if (((tL2C_CONN_INFO *)p_data)->status == BTM_DELAY_CHECK) {
            /* start a timer - encryption change not received before L2CAP connect req */
            FUNC5 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_DELAY_CHECK_SM4);
        } else {
            FUNC9 (p_ccb, L2CAP_CONN_SECURITY_BLOCK, 0);
            FUNC8 (p_ccb);
        }
        break;

    case L2CEVT_L2CA_DATA_WRITE:                    /* Upper layer data to send */
    case L2CEVT_L2CAP_DATA:                         /* Peer data packet rcvd    */
        FUNC11 (p_data);
        break;

    case L2CEVT_L2CA_DISCONNECT_REQ:                 /* Upper wants to disconnect */
        FUNC8 (p_ccb);
        break;

    case L2CEVT_L2CAP_DISCONNECT_REQ:                  /* Peer disconnected request */
        FUNC10 (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);

        /* Tell security manager to abort */
        FUNC2 (p_ccb->p_lcb->remote_bd_addr);

        FUNC8 (p_ccb);
        break;

    case L2CEVT_TIMEOUT:
        /* SM4 related. */
        if (!FUNC4 (p_ccb->p_lcb->handle, HCI_ERR_AUTH_FAILURE)) {
            FUNC0 ("L2CAP - Calling btsnd_hcic_disconnect for handle %i failed", p_ccb->p_lcb->handle);
            FUNC5 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 1);
        }
        break;

    case L2CEVT_SEC_RE_SEND_CMD:                    /* BTM has enough info to proceed */
        FUNC3 (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, FALSE, &l2c_link_sec_comp, p_ccb);
        break;
    }
}