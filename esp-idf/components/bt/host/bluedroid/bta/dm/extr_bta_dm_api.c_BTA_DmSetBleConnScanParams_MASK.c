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
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {void* scan_window; void* scan_int; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BLE_SCAN_PARAMS ;
typedef  void* UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(UINT32 scan_interval, UINT32 scan_window)
{
    tBTA_DM_API_BLE_SCAN_PARAMS  *p_msg;
    if ((p_msg = (tBTA_DM_API_BLE_SCAN_PARAMS *)FUNC2(sizeof(tBTA_DM_API_BLE_SCAN_PARAMS))) != NULL) {
        FUNC1(p_msg, 0, sizeof(tBTA_DM_API_BLE_SCAN_PARAMS));
        p_msg->hdr.event = BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT;
        p_msg->scan_int         = scan_interval;
        p_msg->scan_window      = scan_window;
        FUNC0(p_msg);
    }
}