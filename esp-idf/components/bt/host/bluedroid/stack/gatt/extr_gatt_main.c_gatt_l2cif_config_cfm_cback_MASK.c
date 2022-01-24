#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ result; } ;
typedef  TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_9__ {int ch_flags; int /*<<< orphan*/  peer_bda; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 scalar_t__ GATT_CH_CFG ; 
 int /*<<< orphan*/  GATT_CH_OPEN ; 
 int GATT_L2C_CFG_CFM_DONE ; 
 int GATT_L2C_CFG_IND_DONE ; 
 scalar_t__ L2CAP_CFG_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC9(UINT16 lcid, tL2CAP_CFG_INFO *p_cfg)
{
    tGATT_TCB       *p_tcb;
    tGATTS_SRV_CHG  *p_srv_chg_clt = NULL;

    /* look up clcb for this channel */
    if ((p_tcb = FUNC4(lcid)) != NULL) {
        /* if in correct state */
        if ( FUNC5(p_tcb) == GATT_CH_CFG) {
            /* if result successful */
            if (p_cfg->result == L2CAP_CFG_OK) {
                /* update flags */
                p_tcb->ch_flags |= GATT_L2C_CFG_CFM_DONE;

                /* if configuration complete */
                if (p_tcb->ch_flags & GATT_L2C_CFG_IND_DONE) {
                    FUNC8(p_tcb, GATT_CH_OPEN);

                    if ((p_srv_chg_clt = FUNC6(p_tcb->peer_bda)) != NULL) {
#if (GATTS_INCLUDED == TRUE)
                        FUNC3(p_srv_chg_clt);
#endif  ///GATTS_INCLUDED == TRUE
                    } else {
                        if (FUNC1(p_tcb->peer_bda)) {
                            FUNC2(p_tcb->peer_bda);
                        }
                    }

                    /* send callback */
                    FUNC7(p_tcb);
                }
            }
            /* else failure */
            else {
                /* Send L2CAP disconnect req */
                FUNC0(lcid);
            }
        }
    }
}