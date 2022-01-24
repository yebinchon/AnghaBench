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
struct TYPE_8__ {int local_cid; int /*<<< orphan*/  remote_cid; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  p_lcb; TYPE_2__* p_rcb; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_DISCONNECT_IND_CB ) (int,int /*<<< orphan*/ ) ;
typedef  int UINT16 ;
struct TYPE_6__ {int /*<<< orphan*/  (* pL2CA_DisconnectInd_Cb ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_1__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
#define  L2CEVT_L2CAP_DATA 133 
#define  L2CEVT_L2CA_DATA_WRITE 132 
#define  L2CEVT_L2CA_DISCONNECT_REQ 131 
#define  L2CEVT_L2CA_DISCONNECT_RSP 130 
#define  L2CEVT_LP_DISCONNECT_IND 129 
#define  L2CEVT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = &p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    UINT16                  local_cid = p_ccb->local_cid;

#if (BT_TRACE_VERBOSE == TRUE)
    FUNC1 ("L2CAP - LCID: 0x%04x  st: W4_L2CA_DISC_RSP  evt: %s", p_ccb->local_cid, FUNC2 (event));
#else
    L2CAP_TRACE_EVENT ("L2CAP - st: W4_L2CA_DISC_RSP evt: %d", event);
#endif

    switch (event) {
    case L2CEVT_LP_DISCONNECT_IND:                  /* Link was disconnected */
        FUNC0 ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        FUNC3 (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case L2CEVT_TIMEOUT:
        FUNC4 (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        FUNC0 ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        FUNC3 (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case L2CEVT_L2CA_DISCONNECT_REQ:                /* Upper disconnect request */
    case L2CEVT_L2CA_DISCONNECT_RSP:                /* Upper disconnect response */
        FUNC4 (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);
        FUNC3 (p_ccb);
        break;

    case L2CEVT_L2CAP_DATA:                         /* Peer data packet rcvd    */
    case L2CEVT_L2CA_DATA_WRITE:                    /* Upper layer data to send */
        FUNC5 (p_data);
        break;
    }
}