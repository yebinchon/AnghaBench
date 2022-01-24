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

/* Variables and functions */
 scalar_t__ GATT_CH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(UINT16 lcid, BT_HDR *p_buf)
{
    tGATT_TCB       *p_tcb;

    /* look up clcb for this channel */
    if ((p_tcb = FUNC1(lcid)) != NULL &&
            FUNC2(p_tcb) == GATT_CH_OPEN) {
        /* process the data */
        FUNC0(p_tcb, p_buf);
    } else { /* prevent buffer leak */
        FUNC3(p_buf);
    }

}