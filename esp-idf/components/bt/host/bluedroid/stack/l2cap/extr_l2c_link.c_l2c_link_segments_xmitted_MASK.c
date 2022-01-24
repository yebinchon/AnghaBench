#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ link_state; int /*<<< orphan*/  partial_segment_being_sent; int /*<<< orphan*/  link_xmit_data_q; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {int offset; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ LST_CONNECTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7 (BT_HDR *p_msg)
{
    UINT8       *p = (UINT8 *)(p_msg + 1) + p_msg->offset;
    UINT16      handle;
    tL2C_LCB    *p_lcb;

    /* Extract the handle */
    FUNC2 (handle, p);
    handle   = FUNC0 (handle);

    /* Find the LCB based on the handle */
    if ((p_lcb = FUNC4 (handle)) == NULL) {
        FUNC1 ("L2CAP - rcvd segment complete, unknown handle: %d\n", handle);
        FUNC6 (p_msg);
        return;
    }

    if (p_lcb->link_state == LST_CONNECTED) {
        /* Enqueue the buffer to the head of the transmit queue, and see */
        /* if we can transmit anything more.                             */
        FUNC5(p_lcb->link_xmit_data_q, p_msg);

        p_lcb->partial_segment_being_sent = FALSE;

        FUNC3 (p_lcb, NULL, NULL);
    } else {
        FUNC6 (p_msg);
    }
}