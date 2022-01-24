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
typedef  int /*<<< orphan*/  tBT_DEVICE_TYPE ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int auth_mode; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_ADD_BLE_DEVICE ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_ADD_BLEDEVICE_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(BD_ADDR bd_addr, tBLE_ADDR_TYPE addr_type, int auth_mode, tBT_DEVICE_TYPE dev_type)
{
    tBTA_DM_API_ADD_BLE_DEVICE *p_msg;

    if ((p_msg = (tBTA_DM_API_ADD_BLE_DEVICE *) FUNC3(sizeof(tBTA_DM_API_ADD_BLE_DEVICE))) != NULL) {
        FUNC2 (p_msg, 0, sizeof(tBTA_DM_API_ADD_BLE_DEVICE));

        p_msg->hdr.event = BTA_DM_API_ADD_BLEDEVICE_EVT;
        FUNC0(p_msg->bd_addr, bd_addr);
        p_msg->addr_type = addr_type;
        p_msg->auth_mode = auth_mode;
        p_msg->dev_type = dev_type;

        FUNC1(p_msg);
    }
}