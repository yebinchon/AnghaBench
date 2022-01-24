#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  transport; scalar_t__ remove_dev; } ;
struct TYPE_9__ {TYPE_4__ remove_acl; } ;
typedef  TYPE_3__ tBTA_DM_MSG ;
typedef  TYPE_4__ tBTA_DM_API_REMOVE_ACL ;
typedef  size_t UINT8 ;
struct TYPE_8__ {size_t count; TYPE_1__* peer_device; } ;
struct TYPE_11__ {TYPE_2__ device_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  remove_dev_pending; int /*<<< orphan*/  peer_bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(tBTA_DM_MSG *p_data)
{
    tBTA_DM_API_REMOVE_ACL *p_remove_acl = &p_data->remove_acl;
    UINT8   index;

    FUNC0("bta_dm_close_acl");

    if (FUNC4(p_remove_acl->bd_addr, p_remove_acl->transport)) {
        for (index = 0; index < bta_dm_cb.device_list.count; index ++) {
            if (!FUNC6( bta_dm_cb.device_list.peer_device[index].peer_bdaddr, p_remove_acl->bd_addr)) {
                break;
            }
        }
        if (index != bta_dm_cb.device_list.count) {
            if (p_remove_acl->remove_dev) {
                bta_dm_cb.device_list.peer_device[index].remove_dev_pending = TRUE;
            }
        } else {
            FUNC1("unknown device, remove ACL failed");
        }
        /* Disconnect the ACL link */
        FUNC7(p_remove_acl->bd_addr, p_remove_acl->transport);
    }
    /* if to remove the device from security database ? do it now */
    else if (p_remove_acl->remove_dev) {
        if (!FUNC5(p_remove_acl->bd_addr, p_remove_acl->transport)) {
            FUNC1("delete device from security database failed.");
        }
#if (BLE_INCLUDED == TRUE && GATTC_INCLUDED == TRUE)
        /* need to remove all pending background connection if any */
        FUNC2(0, p_remove_acl->bd_addr, FALSE);
        /* remove all cached GATT information */
        FUNC3(p_remove_acl->bd_addr, false);
#endif
    }
    /* otherwise, no action needed */

}