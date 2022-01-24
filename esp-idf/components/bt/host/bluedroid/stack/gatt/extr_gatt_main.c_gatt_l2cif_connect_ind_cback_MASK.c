#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  mtu_present; } ;
typedef  TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int /*<<< orphan*/  att_lcid; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_11__ {int /*<<< orphan*/  local_mtu; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  GATT_CH_CFG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ L2CAP_CONN_NO_RESOURCES ; 
 scalar_t__ L2CAP_CONN_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ gatt_default ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8 (BD_ADDR  bd_addr, UINT16 lcid, UINT16 psm, UINT8 id)
{
    /* do we already have a control channel for this peer? */
    UINT8       result = L2CAP_CONN_OK;
    tL2CAP_CFG_INFO cfg;
    tGATT_TCB       *p_tcb = FUNC5(bd_addr, BT_TRANSPORT_BR_EDR);
    FUNC3(psm);

    FUNC0("Connection indication cid = %d", lcid);
    /* new connection ? */
    if (p_tcb == NULL) {
        /* allocate tcb */
        if ((p_tcb = FUNC4(bd_addr, BT_TRANSPORT_BR_EDR)) == NULL) {
            /* no tcb available, reject L2CAP connection */
            result = L2CAP_CONN_NO_RESOURCES;
        } else {
            p_tcb->att_lcid = lcid;
        }

    } else { /* existing connection , reject it */
        result = L2CAP_CONN_NO_RESOURCES;
    }

    /* Send L2CAP connect rsp */
    FUNC2(bd_addr, id, lcid, result, 0);

    /* if result ok, proceed with connection */
    if (result == L2CAP_CONN_OK) {
        /* transition to configuration state */
        FUNC6(p_tcb, GATT_CH_CFG);

        /* Send L2CAP config req */
        FUNC7(&cfg, 0, sizeof(tL2CAP_CFG_INFO));
        cfg.mtu_present = TRUE;
        cfg.mtu = gatt_default.local_mtu;

        FUNC1(lcid, &cfg);
    }

}