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
struct TYPE_3__ {int /*<<< orphan*/  disc_reason; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UINT16 FUNC2 (BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tL2C_LCB            *p_lcb;
    UINT16              reason = 0;

    if ((p_lcb = FUNC1 (remote_bda, transport)) != NULL) {
        reason = p_lcb->disc_reason;
    }

    FUNC0 ("L2CA_GetDisconnectReason=%d ", reason);

    return reason;
}