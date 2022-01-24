#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ local_busy; int /*<<< orphan*/  wait_ack; } ;
struct TYPE_7__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__ fcr; } ;
struct TYPE_10__ {scalar_t__ chnl_state; TYPE_3__ fcrb; TYPE_2__ peer_cfg; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ CST_OPEN ; 
 scalar_t__ FALSE ; 
 scalar_t__ L2CAP_FCR_ERTM_MODE ; 
 int /*<<< orphan*/  L2CAP_FCR_P_BIT ; 
 int /*<<< orphan*/  L2CAP_FCR_SUP_RNR ; 
 int /*<<< orphan*/  L2CAP_FCR_SUP_RR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC5 (UINT16 cid, BOOLEAN data_enabled)
{
    tL2C_CCB  *p_ccb;
    BOOLEAN   on_off = !data_enabled;

    FUNC0 ("L2CA_FlowControl(%d)  CID: 0x%04x", on_off, cid);

    /* Find the channel control block. We don't know the link it is on. */
    if ((p_ccb = FUNC4 (NULL, cid)) == NULL) {
        FUNC2 ("L2CAP - no CCB for L2CA_FlowControl, CID: 0x%04x  data_enabled: %d", cid, data_enabled);
        return (FALSE);
    }

    if (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_ERTM_MODE) {
        FUNC1 ("L2CA_FlowControl()  invalid mode:%d", p_ccb->peer_cfg.fcr.mode);
        return (FALSE);
    }
    if (p_ccb->fcrb.local_busy != on_off) {
        p_ccb->fcrb.local_busy = on_off;

        if ( (p_ccb->chnl_state == CST_OPEN) && (!p_ccb->fcrb.wait_ack) ) {
            if (on_off) {
                FUNC3 (p_ccb, L2CAP_FCR_SUP_RNR, 0);
            } else {
                FUNC3 (p_ccb, L2CAP_FCR_SUP_RR, L2CAP_FCR_P_BIT);
            }
        }
    }

    return (TRUE);
}