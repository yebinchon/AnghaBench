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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  ble_cfg_p ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 TYPE_1__* protoble_internal ; 
 int /*<<< orphan*/  FUNC7 () ; 

esp_err_t FUNC8(protocomm_t *pc)
{
    FUNC0(TAG, "protocomm_ble_stop called here...");
    if ((pc != NULL) &&
            (protoble_internal != NULL ) &&
            (pc == protoble_internal->pc_ble)) {
        esp_err_t ret = ESP_OK;

        esp_err_t rc = FUNC2();
        if (rc) {
            FUNC0(TAG, "Error in stopping advertisement with err code = %d",
                     rc);
        }

        ret = FUNC6();
        if (ret == 0) {
            FUNC5();
            ret = FUNC3();
            if (ret != ESP_OK) {
                FUNC1(TAG, "esp_nimble_hci_and_controller_deinit() failed with error: %d", ret);
            }
        }

        FUNC4(ble_cfg_p);
        FUNC7();
        return ret;
    }
    return ESP_ERR_INVALID_ARG;
}