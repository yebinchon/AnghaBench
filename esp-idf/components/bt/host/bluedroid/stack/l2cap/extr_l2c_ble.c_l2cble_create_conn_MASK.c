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
typedef  int /*<<< orphan*/  tL2C_LCB ;
typedef  scalar_t__ tBTM_BLE_CONN_ST ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ BLE_BG_CONN ; 
 scalar_t__ BLE_CONN_IDLE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

BOOLEAN FUNC5 (tL2C_LCB *p_lcb)
{
    tBTM_BLE_CONN_ST     conn_st = FUNC2();
    BOOLEAN         rt = FALSE;

    /* There can be only one BLE connection request outstanding at a time */
    if (conn_st == BLE_CONN_IDLE) {
        rt = FUNC4(p_lcb);
    } else {
        FUNC0 ("L2CAP - LE - cannot start new connection at conn st: %d", conn_st);

        FUNC1(p_lcb);

        if (conn_st == BLE_BG_CONN) {
            FUNC3();
        }

        rt = TRUE;
    }
    return rt;
}