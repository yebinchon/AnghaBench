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
typedef  int /*<<< orphan*/  tGATT_REG ;
typedef  int /*<<< orphan*/  tGATT_IF ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC7 (tGATT_IF gatt_if, BOOLEAN add, BD_ADDR bd_addr, BOOLEAN is_initator)
{
    BOOLEAN         ret = FALSE;
    tGATT_REG        *p_reg;
    tGATT_TCB       *p_tcb = FUNC3(bd_addr, BT_TRANSPORT_LE);

    FUNC0 ("gatt_update_auto_connect_dev ");
    /* Make sure app is registered */
    if ((p_reg = FUNC4(gatt_if)) == NULL) {
        FUNC1("gatt_update_auto_connect_dev - gatt_if %d is not registered", gatt_if);
        return (FALSE);
    }

    if (add) {
        ret = FUNC2(p_reg, bd_addr, is_initator);

        if (ret && p_tcb != NULL) {
            /* if a connected device, update the link holding number */
            FUNC6(gatt_if, p_tcb, TRUE, TRUE);
        }
    } else {
        ret = FUNC5(p_reg, bd_addr, is_initator);
    }
    return ret;
}