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
struct TYPE_9__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  mtu_present; } ;
typedef  TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int /*<<< orphan*/  peer_bda; int /*<<< orphan*/  att_lcid; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_11__ {int /*<<< orphan*/  local_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_CH_CFG ; 
 scalar_t__ GATT_CH_CONN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  L2CAP_CONN_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ gatt_default ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(UINT16 lcid, UINT16 result)
{
    tGATT_TCB       *p_tcb;
    tL2CAP_CFG_INFO cfg;

    /* look up clcb for this channel */
    if ((p_tcb = FUNC4(lcid)) != NULL) {
        FUNC0("gatt_l2c_connect_cfm_cback result: %d ch_state: %d, lcid:0x%x", result, FUNC5(p_tcb), p_tcb->att_lcid);

        /* if in correct state */
        if (FUNC5(p_tcb) == GATT_CH_CONN) {
            /* if result successful */
            if (result == L2CAP_CONN_OK) {
                /* set channel state */
                FUNC6(p_tcb, GATT_CH_CFG);

                /* Send L2CAP config req */
                FUNC7(&cfg, 0, sizeof(tL2CAP_CFG_INFO));
                cfg.mtu_present = TRUE;
                cfg.mtu = gatt_default.local_mtu;
                FUNC1(lcid, &cfg);
            }
            /* else initiating connection failure */
            else {
                FUNC3(p_tcb->peer_bda, result, GATT_TRANSPORT_BR_EDR);
            }
        } else { /* wrong state, disconnect it */
            if (result == L2CAP_CONN_OK) {
                /* just in case the peer also accepts our connection - Send L2CAP disconnect req */
                FUNC2(lcid);
            }
        }
    }
}