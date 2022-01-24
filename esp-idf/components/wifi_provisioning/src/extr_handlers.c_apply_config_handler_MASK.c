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
typedef  int /*<<< orphan*/  wifi_prov_ctx_t ;
typedef  int /*<<< orphan*/  wifi_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC5(wifi_prov_ctx_t **ctx)
{
    wifi_config_t *wifi_cfg = FUNC3(ctx);
    if (!wifi_cfg) {
        FUNC1(TAG, "Wi-Fi config not set");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t ret = FUNC4(wifi_cfg);
    if (ret == ESP_OK) {
        FUNC0(TAG, "Wi-Fi Credentials Applied");
    } else {
        FUNC1(TAG, "Failed to apply Wi-Fi Credentials");
    }

    FUNC2(ctx);
    return ret;
}