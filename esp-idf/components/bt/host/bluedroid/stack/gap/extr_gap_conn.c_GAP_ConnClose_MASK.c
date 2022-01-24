#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ con_state; int /*<<< orphan*/  connection_id; } ;
typedef  TYPE_1__ tGAP_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BT_PASS ; 
 scalar_t__ GAP_CCB_STATE_LISTENING ; 
 int /*<<< orphan*/  GAP_ERR_BAD_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

UINT16 FUNC4 (UINT16 gap_handle)
{
    tGAP_CCB    *p_ccb = FUNC2 (gap_handle);

    FUNC0 ("GAP_CONN - close  handle: 0x%x", gap_handle);

    if (p_ccb) {
        /* Check if we have a connection ID */
        if (p_ccb->con_state != GAP_CCB_STATE_LISTENING) {
            FUNC1 (p_ccb->connection_id);
        }

        FUNC3 (p_ccb);

        return (BT_PASS);
    }

    return (GAP_ERR_BAD_HANDLE);
}