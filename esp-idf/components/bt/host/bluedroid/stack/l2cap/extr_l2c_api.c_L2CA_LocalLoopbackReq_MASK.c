#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_RCB ;
struct TYPE_6__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  link_state; } ;
typedef  TYPE_1__ tL2C_LCB ;
struct TYPE_7__ {int /*<<< orphan*/  local_cid; int /*<<< orphan*/  config_done; int /*<<< orphan*/  remote_cid; int /*<<< orphan*/  chnl_state; int /*<<< orphan*/ * p_rcb; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  CFG_DONE_MASK ; 
 int /*<<< orphan*/  CST_OPEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  LST_CONNECTED ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

UINT16 FUNC6 (UINT16 psm, UINT16 handle, BD_ADDR p_bd_addr)
{
    tL2C_LCB        *p_lcb;
    tL2C_CCB        *p_ccb;
    tL2C_RCB        *p_rcb;

    FUNC1 ("L2CA_LocalLoopbackReq()  PSM: %d  Handle: 0x%04x", psm, handle);

    /* Fail if we have not established communications with the controller */
    if (!FUNC0()) {
        FUNC2 ("L2CAP loop req - BTU not ready");
        return (0);
    }

    /* Fail if the PSM is not registered */
    if ((p_rcb = FUNC5 (psm)) == NULL) {
        FUNC2 ("L2CAP - no RCB for L2CA_conn_req, PSM: %d", psm);
        return (0);
    }

    if ((p_lcb = FUNC4 (p_bd_addr, FALSE, BT_TRANSPORT_BR_EDR)) == NULL) {
        FUNC2 ("L2CAP - no LCB for L2CA_conn_req");
        return (0);
    }

    p_lcb->link_state = LST_CONNECTED;
    p_lcb->handle     = handle;

    /* Allocate a channel control block */
    if ((p_ccb = FUNC3 (p_lcb, 0)) == NULL) {
        FUNC2 ("L2CAP - no CCB for L2CA_conn_req");
        return (0);
    }

    /* Save registration info */
    p_ccb->p_rcb        = p_rcb;
    p_ccb->chnl_state   = CST_OPEN;
    p_ccb->remote_cid   = p_ccb->local_cid;
    p_ccb->config_done  = CFG_DONE_MASK;

    /* Return the local CID as our handle */
    return (p_ccb->local_cid);
}