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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_3__ {scalar_t__ link_role; int /*<<< orphan*/  hci_handle; int /*<<< orphan*/  link_super_tout; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 scalar_t__ BTM_ROLE_MASTER ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTM_UNKNOWN_ADDR ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC3 (BD_ADDR remote_bda, UINT16 timeout)
{
    tACL_CONN   *p = FUNC1(remote_bda, BT_TRANSPORT_BR_EDR);

    FUNC0 ("BTM_SetLinkSuperTout\n");
    if (p != (tACL_CONN *)NULL) {
        p->link_super_tout = timeout;

        /* Only send if current role is Master; 2.0 spec requires this */
        if (p->link_role == BTM_ROLE_MASTER) {
            if (!FUNC2 (LOCAL_BR_EDR_CONTROLLER_ID,
                                                   p->hci_handle, timeout)) {
                return (BTM_NO_RESOURCES);
            }

            return (BTM_CMD_STARTED);
        } else {
            return (BTM_SUCCESS);
        }
    }

    /* If here, no BD Addr found */
    return (BTM_UNKNOWN_ADDR);
}