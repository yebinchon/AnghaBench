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
typedef  int /*<<< orphan*/  tSDP_DISCOVERY_DB ;
struct TYPE_4__ {int /*<<< orphan*/  disc_state; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SDP_CANCEL ; 
 int /*<<< orphan*/  SDP_DISC_WAIT_CANCEL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

BOOLEAN FUNC2 (tSDP_DISCOVERY_DB *p_db)
{
#if SDP_CLIENT_ENABLED == TRUE
    tCONN_CB     *p_ccb = FUNC1 (p_db);
    if (!p_ccb) {
        return (FALSE);
    }

    FUNC0 (p_ccb, SDP_CANCEL);
    p_ccb->disc_state = SDP_DISC_WAIT_CANCEL;
#endif
    return (TRUE);
}