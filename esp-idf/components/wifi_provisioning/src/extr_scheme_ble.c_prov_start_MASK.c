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
typedef  int /*<<< orphan*/  protocomm_t ;
typedef  int /*<<< orphan*/  protocomm_ble_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC2(protocomm_t *pc, void *config)
{
    if (!pc) {
        FUNC0(TAG, "Protocomm handle cannot be null");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config) {
        FUNC0(TAG, "Cannot start with null configuration");
        return ESP_ERR_INVALID_ARG;
    }

    protocomm_ble_config_t *ble_config = (protocomm_ble_config_t *) config;

    /* Start protocomm as BLE service */
    if (FUNC1(pc, ble_config) != ESP_OK) {
        FUNC0(TAG, "Failed to start protocomm BLE service");
        return ESP_FAIL;
    }
    return ESP_OK;
}