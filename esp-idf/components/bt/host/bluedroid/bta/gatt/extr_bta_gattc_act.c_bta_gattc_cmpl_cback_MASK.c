#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_STATUS ;
typedef  int /*<<< orphan*/  tGATT_CL_COMPLETE ;
typedef  scalar_t__ tGATTC_OPTYPE ;
struct TYPE_3__ {scalar_t__ transport; int /*<<< orphan*/  bda; } ;
typedef  TYPE_1__ tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_ALL_APP_ID ; 
 int /*<<< orphan*/  BTA_ID_GATTC ; 
 scalar_t__ BTA_TRANSPORT_BR_EDR ; 
 scalar_t__ GATTC_OPTYPE_INDICATION ; 
 scalar_t__ GATTC_OPTYPE_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void  FUNC7(UINT16 conn_id, tGATTC_OPTYPE op, tGATT_STATUS status,
                                  tGATT_CL_COMPLETE *p_data)
{
    tBTA_GATTC_CLCB     *p_clcb;
    FUNC0("bta_gattc_cmpl_cback: conn_id = %d op = %d status = %d",
                     conn_id, op, status);

    /* notification and indication processed right away */
    if (op == GATTC_OPTYPE_NOTIFICATION || op == GATTC_OPTYPE_INDICATION) {
        FUNC4(conn_id, op, p_data);
        return;
    }
    /* for all other operation, not expected if w/o connection */
    else if ((p_clcb = FUNC3(conn_id)) == NULL) {
        FUNC1("bta_gattc_cmpl_cback unknown conn_id =  %d, ignore data", conn_id);
        return;
    }

    /* if over BR_EDR, inform PM for mode change */
    if (p_clcb->transport == BTA_TRANSPORT_BR_EDR) {
        FUNC5(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
        FUNC6(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
    }

    FUNC2(conn_id, op, status, p_data);
}