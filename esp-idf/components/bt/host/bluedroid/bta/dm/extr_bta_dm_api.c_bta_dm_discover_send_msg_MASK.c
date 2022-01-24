#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  int /*<<< orphan*/  tBTA_TRANSPORT ;
struct TYPE_8__ {int num_uuid; int /*<<< orphan*/  p_uuid; int /*<<< orphan*/  srvc_mask; } ;
typedef  TYPE_2__ tBTA_SERVICE_MASK_EXT ;
typedef  int /*<<< orphan*/  tBTA_DM_SEARCH_CBACK ;
struct TYPE_7__ {int /*<<< orphan*/  event; } ;
struct TYPE_9__ {int num_uuid; int /*<<< orphan*/ * p_uuid; int /*<<< orphan*/  services; int /*<<< orphan*/  transport; int /*<<< orphan*/  sdp_search; int /*<<< orphan*/ * p_cback; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_3__ tBTA_DM_API_DISCOVER ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_DISCOVER_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(BD_ADDR bd_addr, tBTA_SERVICE_MASK_EXT *p_services,
                                     tBTA_DM_SEARCH_CBACK *p_cback, BOOLEAN sdp_search,
                                     tBTA_TRANSPORT transport)
{
    tBTA_DM_API_DISCOVER    *p_msg;
    UINT16  len = p_services ? (sizeof(tBTA_DM_API_DISCOVER) +
                                sizeof(tBT_UUID) * p_services->num_uuid) :
                  sizeof(tBTA_DM_API_DISCOVER);

    if ((p_msg = (tBTA_DM_API_DISCOVER *) FUNC4(len)) != NULL) {
        FUNC3(p_msg, 0, len);

        p_msg->hdr.event = BTA_DM_API_DISCOVER_EVT;
        FUNC0(p_msg->bd_addr, bd_addr);
        p_msg->p_cback = p_cback;
        p_msg->sdp_search = sdp_search;
        p_msg->transport    = transport;

        if (p_services != NULL) {
#if BLE_INCLUDED == TRUE && BTA_GATT_INCLUDED == TRUE
            p_msg->services = p_services->srvc_mask;
            p_msg->num_uuid = p_services->num_uuid;
            if (p_services->num_uuid != 0) {
                p_msg->p_uuid = (tBT_UUID *)(p_msg + 1);
                FUNC2(p_msg->p_uuid, p_services->p_uuid, sizeof(tBT_UUID) * p_services->num_uuid);
            }
#endif
        }

        FUNC1(p_msg);
    }
}