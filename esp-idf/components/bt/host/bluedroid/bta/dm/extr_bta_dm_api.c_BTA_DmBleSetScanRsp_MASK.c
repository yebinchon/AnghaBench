#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_SET_ADV_DATA_CMPL_CBACK ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/ * p_adv_cfg; int /*<<< orphan*/ * p_adv_data_cback; int /*<<< orphan*/  data_mask; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_SET_ADV_CONFIG ;
typedef  int /*<<< orphan*/  tBTA_BLE_AD_MASK ;
typedef  int /*<<< orphan*/  tBTA_BLE_ADV_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_BLE_SET_SCAN_RSP_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 

extern void FUNC2 (tBTA_BLE_AD_MASK data_mask, tBTA_BLE_ADV_DATA *p_adv_cfg,
                                 tBTA_SET_ADV_DATA_CMPL_CBACK *p_adv_data_cback)
{
    tBTA_DM_API_SET_ADV_CONFIG  *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_ADV_CONFIG *)
                 FUNC1(sizeof(tBTA_DM_API_SET_ADV_CONFIG))) != NULL) {
        p_msg->hdr.event = BTA_DM_API_BLE_SET_SCAN_RSP_EVT;
        p_msg->data_mask = data_mask;
        p_msg->p_adv_data_cback = p_adv_data_cback;
        p_msg->p_adv_cfg = p_adv_cfg;

        FUNC0(p_msg);
    }
}