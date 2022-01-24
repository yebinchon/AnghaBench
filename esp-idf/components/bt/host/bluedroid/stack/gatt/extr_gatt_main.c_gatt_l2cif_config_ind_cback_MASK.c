#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ mtu; int /*<<< orphan*/  result; scalar_t__ mtu_present; } ;
typedef  TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {scalar_t__ payload_size; int ch_flags; int /*<<< orphan*/  peer_bda; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_CH_OPEN ; 
 int GATT_L2C_CFG_CFM_DONE ; 
 int GATT_L2C_CFG_IND_DONE ; 
 scalar_t__ GATT_MIN_BR_MTU_SIZE ; 
 int /*<<< orphan*/  L2CAP_CFG_OK ; 
 scalar_t__ L2CAP_DEFAULT_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC9(UINT16 lcid, tL2CAP_CFG_INFO *p_cfg)
{
    tGATT_TCB       *p_tcb;
    tGATTS_SRV_CHG  *p_srv_chg_clt = NULL;
    /* look up clcb for this channel */
    if ((p_tcb = FUNC4(lcid)) != NULL) {
        /* GATT uses the smaller of our MTU and peer's MTU  */
        if ( p_cfg->mtu_present &&
                (p_cfg->mtu >= GATT_MIN_BR_MTU_SIZE && p_cfg->mtu < L2CAP_DEFAULT_MTU)) {
            p_tcb->payload_size = p_cfg->mtu;
        } else {
            p_tcb->payload_size = L2CAP_DEFAULT_MTU;
        }

        /* send L2CAP configure response */
        FUNC8(p_cfg, 0, sizeof(tL2CAP_CFG_INFO));
        p_cfg->result = L2CAP_CFG_OK;
        FUNC0(lcid, p_cfg);

        /* if first config ind */
        if ((p_tcb->ch_flags & GATT_L2C_CFG_IND_DONE) == 0) {
            /* update flags */
            p_tcb->ch_flags |= GATT_L2C_CFG_IND_DONE;

            /* if configuration complete */
            if (p_tcb->ch_flags & GATT_L2C_CFG_CFM_DONE) {
                FUNC7(p_tcb, GATT_CH_OPEN);
                if ((p_srv_chg_clt = FUNC5(p_tcb->peer_bda)) != NULL) {
#if (GATTS_INCLUDED == TRUE)
                    FUNC3(p_srv_chg_clt);
#endif  ///GATTS_INCLUDED == TRUE
                } else {
                    if (FUNC1(p_tcb->peer_bda)) {
                        FUNC2(p_tcb->peer_bda);
                    }
                }

                /* send callback */
                FUNC6(p_tcb);
            }
        }
    }
}