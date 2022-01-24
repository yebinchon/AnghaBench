#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int local_cid; int /*<<< orphan*/  remote_cid; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  p_lcb; TYPE_1__* p_rcb; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_DISCONNECT_CFM_CB ) (int,int /*<<< orphan*/ ) ;
typedef  int UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* pL2CA_DisconnectCfm_Cb ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_DISC_OK ; 
 int /*<<< orphan*/  L2CAP_DISC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
#define  L2CEVT_L2CAP_DATA 133 
#define  L2CEVT_L2CAP_DISCONNECT_REQ 132 
#define  L2CEVT_L2CAP_DISCONNECT_RSP 131 
#define  L2CEVT_L2CA_DATA_WRITE 130 
#define  L2CEVT_LP_DISCONNECT_IND 129 
#define  L2CEVT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_CFM_CB *disconnect_cfm = &p_ccb->p_rcb->api.pL2CA_DisconnectCfm_Cb;
    UINT16                  local_cid = p_ccb->local_cid;

#if (BT_TRACE_VERBOSE == TRUE)
    FUNC1 ("L2CAP - LCID: 0x%04x  st: W4_L2CAP_DISC_RSP  evt: %s", p_ccb->local_cid, FUNC2 (event));
#else
    L2CAP_TRACE_EVENT ("L2CAP - st: W4_L2CAP_DISC_RSP evt: %d", event);
#endif

    switch (event) {
    case L2CEVT_L2CAP_DISCONNECT_RSP:                /* Peer disconnect response */
        FUNC3 (p_ccb);
        if (disconnect_cfm) {
            FUNC0 ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_OK);
        }
        break;

    case L2CEVT_L2CAP_DISCONNECT_REQ:                /* Peer disconnect request  */
        FUNC4 (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        FUNC3 (p_ccb);
        if (disconnect_cfm) {
            FUNC0 ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_OK);
        }
        break;

    case L2CEVT_LP_DISCONNECT_IND:                  /* Link was disconnected */
    case L2CEVT_TIMEOUT:                            /* Timeout */
        FUNC3 (p_ccb);
        if (disconnect_cfm) {
            FUNC0 ("L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x", local_cid);
            (*disconnect_cfm)(local_cid, L2CAP_DISC_TIMEOUT);
        }
        break;

    case L2CEVT_L2CAP_DATA:                         /* Peer data packet rcvd    */
    case L2CEVT_L2CA_DATA_WRITE:                    /* Upper layer data to send */
        FUNC5 (p_data);
        break;
    }
}