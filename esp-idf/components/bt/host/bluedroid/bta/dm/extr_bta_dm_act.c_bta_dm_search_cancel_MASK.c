#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* layer_specific; void* event; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_MSG ;
struct TYPE_9__ {int /*<<< orphan*/  peer_bdaddr; scalar_t__ gatt_disc_active; int /*<<< orphan*/  name_discover_done; int /*<<< orphan*/  cancel_pending; } ;

/* Variables and functions */
 void* BTA_DM_API_DISCOVER_EVT ; 
 void* BTA_DM_INQUIRY_CMPL_EVT ; 
 void* BTA_DM_SEARCH_CMPL_EVT ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__ bta_dm_search_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8 (tBTA_DM_MSG *p_data)
{
    FUNC3(p_data);
    tBTA_DM_MSG *p_msg;

    if (FUNC2()) {
        if (FUNC0() != BTM_CMD_STARTED) {
            FUNC5(NULL);
            p_msg = (tBTA_DM_MSG *) FUNC7(sizeof(tBTA_DM_MSG));
            if (p_msg != NULL) {
                p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
                p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
                FUNC6(p_msg);
            }
        } else {
            /* flag a search cancel is pending */
            bta_dm_search_cb.cancel_pending = TRUE;
        }
    }
    /* If no Service Search going on then issue cancel remote name in case it is active */
    else if (!bta_dm_search_cb.name_discover_done) {
        FUNC1();

        if ((p_msg = (tBTA_DM_MSG *) FUNC7(sizeof(tBTA_DM_MSG))) != NULL) {
            p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
            p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
            FUNC6(p_msg);
        }

    } else {
        if ((p_msg = (tBTA_DM_MSG *) FUNC7(sizeof(tBTA_DM_MSG))) != NULL) {
            p_msg->hdr.event = BTA_DM_INQUIRY_CMPL_EVT;
            p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
            FUNC6(p_msg);
        }
    }

#if BLE_INCLUDED == TRUE && BTA_GATT_INCLUDED == TRUE && SDP_INCLUDED == TRUE && GATTC_INCLUDED == TRUE
    if (bta_dm_search_cb.gatt_disc_active) {
        FUNC4(bta_dm_search_cb.peer_bdaddr);
    }
#endif
}