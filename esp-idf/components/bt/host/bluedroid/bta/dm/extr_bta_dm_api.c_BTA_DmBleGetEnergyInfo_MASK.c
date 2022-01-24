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
struct TYPE_6__ {int /*<<< orphan*/ * p_energy_info_cback; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_ENERGY_INFO ;
typedef  int /*<<< orphan*/  tBTA_BLE_ENERGY_INFO_CBACK ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_DM_API_BLE_ENERGY_INFO_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(tBTA_BLE_ENERGY_INFO_CBACK *p_cmpl_cback)
{
    tBTA_DM_API_ENERGY_INFO *p_msg;
    FUNC0 ("BTA_DmBleGetEnergyInfo");

    UINT16  len = sizeof(tBTA_DM_API_ENERGY_INFO) + sizeof(tBLE_BD_ADDR);

    if ((p_msg = (tBTA_DM_API_ENERGY_INFO *) FUNC3(len)) != NULL) {
        FUNC2 (p_msg, 0, len);
        p_msg->hdr.event        = BTA_DM_API_BLE_ENERGY_INFO_EVT;
        p_msg->p_energy_info_cback = p_cmpl_cback;
        FUNC1(p_msg);
    }
}