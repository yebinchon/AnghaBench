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
typedef  int /*<<< orphan*/  wifi_prov_sta_fail_reason_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {scalar_t__ wifi_state; int /*<<< orphan*/  wifi_disconnect_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

esp_err_t FUNC3(wifi_prov_sta_fail_reason_t *reason)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    FUNC0(prov_ctx_lock);
    if (prov_ctx == NULL || reason == NULL) {
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }

    if (prov_ctx->wifi_state != WIFI_PROV_STA_DISCONNECTED) {
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }

    *reason = prov_ctx->wifi_disconnect_reason;
    FUNC2(prov_ctx_lock);
    return ESP_OK;
}