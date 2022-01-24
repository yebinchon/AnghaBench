#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ connection_id; int /*<<< orphan*/  con_state; int /*<<< orphan*/ * device_address; int /*<<< orphan*/  con_flags; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDP_FLAGS_IS_ORIG ; 
 int /*<<< orphan*/  SDP_PSM ; 
 int /*<<< orphan*/  SDP_STATE_CONN_SETUP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

tCONN_CB *FUNC6 (UINT8 *p_bd_addr)
{
    tCONN_CB              *p_ccb;
    UINT16                cid;

    /* Allocate a new CCB. Return if none available. */
    if ((p_ccb = FUNC4()) == NULL) {
        FUNC2 ("SDP - no spare CCB for orig\n");
        return (NULL);
    }

    FUNC1 ("SDP - Originate started\n");

    /* We are the originator of this connection */
    p_ccb->con_flags |= SDP_FLAGS_IS_ORIG;

    /* Save the BD Address and Channel ID. */
    FUNC3 (&p_ccb->device_address[0], p_bd_addr, sizeof (BD_ADDR));

    /* Transition to the next appropriate state, waiting for connection confirm. */
    p_ccb->con_state = SDP_STATE_CONN_SETUP;

    cid = FUNC0 (SDP_PSM, p_bd_addr);

    /* Check if L2CAP started the connection process */
    if (cid != 0) {
        p_ccb->connection_id = cid;

        return (p_ccb);
    } else {
        FUNC2 ("SDP - Originate failed\n");
        FUNC5 (p_ccb);
        return (NULL);
    }
}