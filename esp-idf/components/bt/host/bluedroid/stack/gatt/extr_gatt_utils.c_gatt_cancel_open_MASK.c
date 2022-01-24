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
typedef  int /*<<< orphan*/  tGATT_IF ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_CH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC6(tGATT_IF gatt_if, BD_ADDR bda)
{
    tGATT_TCB *p_tcb = NULL;
    BOOLEAN status = TRUE;

    p_tcb = FUNC2(bda, BT_TRANSPORT_LE);

    if (p_tcb) {
        if (FUNC3(p_tcb) == GATT_CH_OPEN) {
            FUNC0("GATT_CancelConnect - link connected Too late to cancel");
            status = FALSE;
        } else {
            FUNC5(gatt_if, p_tcb, FALSE, FALSE);
            if (!FUNC4(p_tcb)) {
                FUNC1(p_tcb);
            }
        }
    }

    return status;
}