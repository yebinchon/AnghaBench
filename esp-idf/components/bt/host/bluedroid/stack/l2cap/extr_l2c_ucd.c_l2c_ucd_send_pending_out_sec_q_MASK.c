#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* p_lcb; } ;
typedef  TYPE_1__ tL2C_CCB ;
struct TYPE_6__ {int /*<<< orphan*/  ucd_out_sec_pending_q; } ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(tL2C_CCB  *p_ccb)
{
    BT_HDR *p_buf = (BT_HDR*)FUNC0(p_ccb->p_lcb->ucd_out_sec_pending_q, 0);

    if (p_buf != NULL) {
        FUNC1 (p_ccb, (BT_HDR *)p_buf);
        FUNC2 (p_ccb->p_lcb, NULL, NULL);
    }
}