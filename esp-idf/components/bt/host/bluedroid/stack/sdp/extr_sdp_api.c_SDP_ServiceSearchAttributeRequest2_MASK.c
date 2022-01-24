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
typedef  int /*<<< orphan*/  tSDP_DISC_CMPL_CB2 ;
typedef  int /*<<< orphan*/  tSDP_DISCOVERY_DB ;
struct TYPE_3__ {void* user_data; int /*<<< orphan*/  is_attr_search; int /*<<< orphan*/ * p_cb2; int /*<<< orphan*/ * p_db; int /*<<< orphan*/  disc_state; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SDP_DISC_WAIT_CONN ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

BOOLEAN FUNC1 (UINT8 *p_bd_addr, tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_CMPL_CB2 *p_cb2, void *user_data)
{
#if SDP_CLIENT_ENABLED == TRUE
    tCONN_CB     *p_ccb;

    /* Specific BD address */
    p_ccb = FUNC0 (p_bd_addr);

    if (!p_ccb) {
        return (FALSE);
    }

    p_ccb->disc_state = SDP_DISC_WAIT_CONN;
    p_ccb->p_db       = p_db;
    p_ccb->p_cb2       = p_cb2;

    p_ccb->is_attr_search = TRUE;
    p_ccb->user_data = user_data;

    return (TRUE);
#else
    return (FALSE);
#endif
}