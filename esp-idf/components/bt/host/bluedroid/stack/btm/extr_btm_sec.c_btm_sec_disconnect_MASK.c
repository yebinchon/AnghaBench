#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_5__ {int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_6__ {scalar_t__ pairing_state; int pairing_flags; int /*<<< orphan*/  pairing_bda; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTM_BUSY ; 
 int BTM_PAIR_FLAGS_DISC_WHEN_DONE ; 
 int BTM_PAIR_FLAGS_WE_STARTED_DD ; 
 scalar_t__ BTM_PAIR_STATE_IDLE ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 TYPE_4__ btm_cb ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC4 (UINT16 handle, UINT8 reason)
{
    tBTM_SEC_DEV_REC  *p_dev_rec = FUNC0 (handle);

    /* In some weird race condition we may not have a record */
    if (!p_dev_rec) {
        FUNC2 (handle, reason);
        return (BTM_SUCCESS);
    }

    /* If we are in the process of bonding we need to tell client that auth failed */
    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            &&  (FUNC3 (btm_cb.pairing_bda, p_dev_rec->bd_addr, BD_ADDR_LEN) == 0)
            &&  (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD) ) {
        /* we are currently doing bonding.  Link will be disconnected when done */
        btm_cb.pairing_flags |= BTM_PAIR_FLAGS_DISC_WHEN_DONE;
        return (BTM_BUSY);
    }

    return (FUNC1(p_dev_rec, reason, handle));
}