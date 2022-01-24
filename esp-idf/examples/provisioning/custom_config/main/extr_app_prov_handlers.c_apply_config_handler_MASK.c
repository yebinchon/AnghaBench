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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static esp_err_t FUNC5(wifi_prov_ctx_t **ctx)
{
    wifi_config_t *wifi_cfg = FUNC4(ctx);
    if (!wifi_cfg) {
        FUNC0(TAG, "WiFi config not set");
        return ESP_FAIL;
    }

    FUNC2(wifi_cfg);
    FUNC1(TAG, "WiFi Credentials Applied");

    FUNC3(ctx);
    return ESP_OK;
}