#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  disc_state; int /*<<< orphan*/  timer_entry; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int UINT8 ;
struct TYPE_10__ {int offset; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ BT_HDR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SDP_DISC_WAIT_ATTR ; 
 int /*<<< orphan*/  SDP_DISC_WAIT_HANDLES ; 
 int /*<<< orphan*/  SDP_DISC_WAIT_SEARCH_ATTR ; 
 int /*<<< orphan*/  SDP_GENERIC_ERROR ; 
#define  SDP_PDU_SERVICE_ATTR_RSP 130 
#define  SDP_PDU_SERVICE_SEARCH_ATTR_RSP 129 
#define  SDP_PDU_SERVICE_SEARCH_RSP 128 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC7 (tCONN_CB *p_ccb, BT_HDR *p_msg)
{
    UINT8           *p, rsp_pdu;
    BOOLEAN         invalid_pdu = TRUE;

#if (SDP_DEBUG_RAW == TRUE)
    FUNC1("sdp_disc_server_rsp disc_state:%d\n", p_ccb->disc_state);
#endif

    /* stop inactivity timer when we receive a response */
    FUNC2 (&p_ccb->timer_entry);

    /* Got a reply!! Check what we got back */
    p = (UINT8 *)(p_msg + 1) + p_msg->offset;

    FUNC0 (rsp_pdu, p);

    p_msg->len--;

    switch (rsp_pdu) {
    case SDP_PDU_SERVICE_SEARCH_RSP:
        if (p_ccb->disc_state == SDP_DISC_WAIT_HANDLES) {
            FUNC5 (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;

    case SDP_PDU_SERVICE_ATTR_RSP:
        if (p_ccb->disc_state == SDP_DISC_WAIT_ATTR) {
            FUNC3 (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;

    case SDP_PDU_SERVICE_SEARCH_ATTR_RSP:
        if (p_ccb->disc_state == SDP_DISC_WAIT_SEARCH_ATTR) {
            FUNC4 (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;
    }

    if (invalid_pdu) {
        FUNC1 ("SDP - Unexp. PDU: %d in state: %d\n", rsp_pdu, p_ccb->disc_state);
        FUNC6 (p_ccb, SDP_GENERIC_ERROR);
    }
}