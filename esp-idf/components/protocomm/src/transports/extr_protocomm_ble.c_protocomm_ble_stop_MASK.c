#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  protocomm_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pc_ble; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* protoble_internal ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

esp_err_t FUNC4(protocomm_t *pc)
{
    if ((pc != NULL) &&
        (protoble_internal != NULL ) &&
        (pc == protoble_internal->pc_ble)) {
        esp_err_t ret = ESP_OK;
        ret = FUNC3();
        if (ret) {
            FUNC0(TAG, "BLE stop failed");
        }
        FUNC2();
        FUNC1();
        return ret;
    }
    return ESP_ERR_INVALID_ARG;
}