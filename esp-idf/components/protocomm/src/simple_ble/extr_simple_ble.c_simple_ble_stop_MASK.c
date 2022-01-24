#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

esp_err_t FUNC6(void)
{
    esp_err_t err;
    FUNC0(TAG, "Free mem at start of simple_ble_stop %d", FUNC5());
    err = FUNC2();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }
    FUNC0(TAG, "esp_bluedroid_disable called successfully");
    err = FUNC1();
    if (err != ESP_OK) {
        return err;
    }
    FUNC0(TAG, "esp_bluedroid_deinit called successfully");
    err = FUNC4();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }

    /* The API `esp_bt_controller_deinit` will have to be removed when we add support for
     * `reset to provisioning`
     */
    FUNC0(TAG, "esp_bt_controller_disable called successfully");
    err = FUNC3();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }
    FUNC0(TAG, "esp_bt_controller_deinit called successfully");

    FUNC0(TAG, "Free mem at end of simple_ble_stop %d", FUNC5());
    return ESP_OK;
}