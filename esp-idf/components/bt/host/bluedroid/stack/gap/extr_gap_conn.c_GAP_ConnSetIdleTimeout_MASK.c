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
struct TYPE_3__ {int /*<<< orphan*/  connection_id; } ;
typedef  TYPE_1__ tGAP_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BT_PASS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GAP_ERR_BAD_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

UINT16 FUNC2 (UINT16 gap_handle, UINT16 timeout)
{
    tGAP_CCB    *p_ccb;

    if ((p_ccb = FUNC1 (gap_handle)) == NULL) {
        return (GAP_ERR_BAD_HANDLE);
    }

    if (FUNC0 (p_ccb->connection_id, timeout, FALSE)) {
        return (BT_PASS);
    } else {
        return (GAP_ERR_BAD_HANDLE);
    }
}