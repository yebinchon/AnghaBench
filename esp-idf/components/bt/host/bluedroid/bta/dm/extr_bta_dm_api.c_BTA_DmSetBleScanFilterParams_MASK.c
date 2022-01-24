#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_IF ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/  scan_param_setup_cback; void* scan_filter_policy; void* scan_duplicate_filter; void* addr_type_own; int /*<<< orphan*/  scan_mode; void* scan_window; void* scan_int; int /*<<< orphan*/  client_if; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BLE_SCAN_FILTER_PARAMS ;
typedef  int /*<<< orphan*/  tBLE_SCAN_PARAM_SETUP_CBACK ;
typedef  int /*<<< orphan*/  tBLE_SCAN_MODE ;
typedef  void* UINT8 ;
typedef  void* UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(tGATT_IF client_if, UINT32 scan_interval,
                                  UINT32 scan_window, tBLE_SCAN_MODE scan_mode, UINT8 scan_fil_poilcy,
                                  UINT8 addr_type_own, UINT8 scan_duplicate_filter, tBLE_SCAN_PARAM_SETUP_CBACK scan_param_setup_cback)
{
    tBTA_DM_API_BLE_SCAN_FILTER_PARAMS *p_msg;

    if ((p_msg = (tBTA_DM_API_BLE_SCAN_FILTER_PARAMS *)FUNC2(sizeof(tBTA_DM_API_BLE_SCAN_FILTER_PARAMS))) != NULL) {
        FUNC1(p_msg, 0, sizeof(tBTA_DM_API_BLE_SCAN_FILTER_PARAMS));
        p_msg->hdr.event = BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT;
        p_msg->client_if = client_if;
        p_msg->scan_int = scan_interval;
        p_msg->scan_window = scan_window;
        p_msg->scan_mode = scan_mode;
        p_msg->addr_type_own = addr_type_own;
        p_msg->scan_duplicate_filter = scan_duplicate_filter;
        p_msg->scan_filter_policy = scan_fil_poilcy;
        p_msg->scan_param_setup_cback = scan_param_setup_cback;

        FUNC0(p_msg);
    }


}