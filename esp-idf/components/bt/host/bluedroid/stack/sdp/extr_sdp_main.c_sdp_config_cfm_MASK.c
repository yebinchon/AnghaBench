#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ result; scalar_t__ fcr_present; } ;
typedef  TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int con_flags; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  con_state; } ;
typedef  TYPE_2__ tCONN_CB ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_11__ {TYPE_1__ l2cap_my_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_SDP ; 
 scalar_t__ FALSE ; 
 scalar_t__ L2CAP_CFG_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SDP_CFG_FAILED ; 
 int SDP_FLAGS_HIS_CFG_DONE ; 
 int SDP_FLAGS_IS_ORIG ; 
 int SDP_FLAGS_MY_CFG_DONE ; 
 int /*<<< orphan*/  SDP_INACT_TIMEOUT ; 
 int /*<<< orphan*/  SDP_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ sdp_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (UINT16 l2cap_cid, tL2CAP_CFG_INFO *p_cfg)
{
    tCONN_CB    *p_ccb;

    FUNC1 ("SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d\n", l2cap_cid, p_cfg->result);

    /* Find CCB based on CID */
    if ((p_ccb = FUNC6 (l2cap_cid)) == NULL) {
        FUNC2 ("SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }

    /* For now, always accept configuration from the other side */
    if (p_cfg->result == L2CAP_CFG_OK) {
        p_ccb->con_flags |= SDP_FLAGS_MY_CFG_DONE;

        if (p_ccb->con_flags & SDP_FLAGS_HIS_CFG_DONE) {
            p_ccb->con_state = SDP_STATE_CONNECTED;

            if (p_ccb->con_flags & SDP_FLAGS_IS_ORIG) {
                FUNC4 (p_ccb);
            } else
                /* Start inactivity timer */
            {
                FUNC3 (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);
            }
        }
    } else {
        /* If peer has rejected FCR and suggested basic then try basic */
        if (p_cfg->fcr_present) {
            tL2CAP_CFG_INFO cfg = sdp_cb.l2cap_my_cfg;
            cfg.fcr_present = FALSE;
            FUNC0 (l2cap_cid, &cfg);

            /* Remain in configure state */
            return;
        }

#if SDP_CLIENT_ENABLED == TRUE
        FUNC5(p_ccb, SDP_CFG_FAILED);
#endif
    }
}