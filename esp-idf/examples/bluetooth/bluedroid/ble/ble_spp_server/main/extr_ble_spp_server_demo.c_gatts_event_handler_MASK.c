#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_gatts_cb_event_t ;
typedef  scalar_t__ esp_gatt_if_t ;
struct TYPE_6__ {scalar_t__ status; scalar_t__ app_id; } ;
struct TYPE_7__ {TYPE_1__ reg; } ;
typedef  TYPE_2__ esp_ble_gatts_cb_param_t ;
struct TYPE_8__ {scalar_t__ gatts_if; int /*<<< orphan*/  (* gatts_cb ) (scalar_t__,scalar_t__,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ ESP_GATTS_REG_EVT ; 
 scalar_t__ ESP_GATT_IF_NONE ; 
 scalar_t__ ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GATTS_TABLE_TAG ; 
 size_t SPP_PROFILE_APP_IDX ; 
 int SPP_PROFILE_NUM ; 
 TYPE_4__* spp_profile_tab ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    FUNC0(GATTS_TABLE_TAG, "EVT %d, gatts if %d\n", event, gatts_if);

    /* If event is register event, store the gatts_if for each profile */
    if (event == ESP_GATTS_REG_EVT) {
        if (param->reg.status == ESP_GATT_OK) {
            spp_profile_tab[SPP_PROFILE_APP_IDX].gatts_if = gatts_if;
        } else {
            FUNC0(GATTS_TABLE_TAG, "Reg app failed, app_id %04x, status %d\n",param->reg.app_id, param->reg.status);
            return;
        }
    }

    do {
        int idx;
        for (idx = 0; idx < SPP_PROFILE_NUM; idx++) {
            if (gatts_if == ESP_GATT_IF_NONE || /* ESP_GATT_IF_NONE, not specify a certain gatt_if, need to call every profile cb function */
                    gatts_if == spp_profile_tab[idx].gatts_if) {
                if (spp_profile_tab[idx].gatts_cb) {
                    spp_profile_tab[idx].gatts_cb(event, gatts_if, param);
                }
            }
        }
    } while (0);
}