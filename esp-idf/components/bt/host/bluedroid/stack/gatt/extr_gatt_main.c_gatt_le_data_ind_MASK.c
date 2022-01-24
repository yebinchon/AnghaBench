#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_TCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 scalar_t__ GATT_CH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (UINT16 chan, BD_ADDR bd_addr, BT_HDR *p_buf)
{
    tGATT_TCB    *p_tcb;

    /* Find CCB based on bd addr */
    if ((p_tcb = FUNC2 (bd_addr, BT_TRANSPORT_LE)) != NULL &&
            FUNC3(p_tcb) >= GATT_CH_OPEN) {
        FUNC1(p_tcb, p_buf);
    } else {
        FUNC4 (p_buf);

        if (p_tcb != NULL) {
            FUNC0 ("ATT - Ignored L2CAP data while in state: %d\n",
                                FUNC3(p_tcb));
        }
    }
}