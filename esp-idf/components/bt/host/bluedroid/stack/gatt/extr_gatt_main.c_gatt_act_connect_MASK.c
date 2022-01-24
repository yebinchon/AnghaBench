#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pending_ind_q; int /*<<< orphan*/  pending_enc_clcb; } ;
typedef  TYPE_1__ tGATT_TCB ;
struct TYPE_12__ {int /*<<< orphan*/  gatt_if; } ;
typedef  TYPE_2__ tGATT_REG ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 scalar_t__ FALSE ; 
 scalar_t__ GATT_CH_CLOSING ; 
 scalar_t__ GATT_CH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

BOOLEAN FUNC9 (tGATT_REG *p_reg, BD_ADDR bd_addr, tBLE_ADDR_TYPE bd_addr_type, tBT_TRANSPORT transport)
{
    BOOLEAN     ret = FALSE;
    tGATT_TCB   *p_tcb;
    UINT8       st;

    if ((p_tcb = FUNC4(bd_addr, transport)) != NULL) {
        ret = TRUE;
        st = FUNC5(p_tcb);

        /* before link down, another app try to open a GATT connection */
        if (st == GATT_CH_OPEN &&  FUNC6(p_tcb) == 0 &&
                transport == BT_TRANSPORT_LE ) {
            if (!FUNC3(bd_addr, bd_addr_type, p_tcb, transport)) {
                ret = FALSE;
            }
        } else if (st == GATT_CH_CLOSING) {
            /* need to complete the closing first */
            ret = FALSE;
        }
    } else {
        if ((p_tcb = FUNC2(bd_addr, transport)) != NULL) {
            if (!FUNC3(bd_addr, bd_addr_type, p_tcb, transport)) {
                FUNC0("gatt_connect failed");
                FUNC1(p_tcb->pending_enc_clcb, NULL);
                FUNC1(p_tcb->pending_ind_q, NULL);
                FUNC8(p_tcb, 0, sizeof(tGATT_TCB));
            } else {
                ret = TRUE;
            }
        } else {
            ret = 0;
            FUNC0("Max TCB for gatt_if [%d] reached.", p_reg->gatt_if);
        }
    }

    if (ret) {
        FUNC7(p_reg->gatt_if, p_tcb, TRUE, FALSE);
    }

    return ret;
}