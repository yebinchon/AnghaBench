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
struct TYPE_6__ {int /*<<< orphan*/ * p_dir_bda; void* adv_int_max; void* adv_int_min; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BLE_ADV_PARAMS ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  void* UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,void*) ; 
 int /*<<< orphan*/  BTA_DM_API_BLE_ADV_PARAM_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5 (UINT16 adv_int_min, UINT16 adv_int_max,
                            tBLE_BD_ADDR *p_dir_bda)
{
#if BLE_INCLUDED == TRUE
    tBTA_DM_API_BLE_ADV_PARAMS    *p_msg;

    FUNC0 ("BTA_DmSetBleAdvParam: %d, %d\n", adv_int_min, adv_int_max);

    if ((p_msg = (tBTA_DM_API_BLE_ADV_PARAMS *) FUNC4(sizeof(tBTA_DM_API_BLE_ADV_PARAMS)
                 + sizeof(tBLE_BD_ADDR))) != NULL) {
        FUNC3(p_msg, 0, sizeof(tBTA_DM_API_BLE_ADV_PARAMS) + sizeof(tBLE_BD_ADDR));

        p_msg->hdr.event = BTA_DM_API_BLE_ADV_PARAM_EVT;

        p_msg->adv_int_min      = adv_int_min;
        p_msg->adv_int_max      = adv_int_max;

        if (p_dir_bda != NULL) {
            p_msg->p_dir_bda = (tBLE_BD_ADDR *)(p_msg + 1);
            FUNC2(p_msg->p_dir_bda, p_dir_bda, sizeof(tBLE_BD_ADDR));
        }

        FUNC1(p_msg);
    }
#endif
}