#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sta; } ;
typedef  TYPE_3__ wifi_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_7__ {int /*<<< orphan*/  wifi_mode; } ;
struct TYPE_8__ {TYPE_1__ scheme; } ;
struct TYPE_10__ {scalar_t__ prov_state; int /*<<< orphan*/  wifi_state; TYPE_2__ mgr_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_PROV_CRED_RECV ; 
 scalar_t__ WIFI_PROV_STATE_CRED_RECV ; 
 int /*<<< orphan*/  WIFI_PROV_STA_CONNECTING ; 
 int /*<<< orphan*/  WIFI_STORAGE_FLASH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int portTICK_PERIOD_MS ; 
 TYPE_5__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

esp_err_t FUNC10(wifi_config_t *wifi_cfg)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    FUNC0(prov_ctx_lock);
    if (!prov_ctx) {
        FUNC1(TAG, "Invalid state of Provisioning app");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }
    if (prov_ctx->prov_state >= WIFI_PROV_STATE_CRED_RECV) {
        FUNC1(TAG, "Wi-Fi credentials already received by provisioning app");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }
    FUNC3(wifi_cfg->sta, "Received");

    /* Configure Wi-Fi as both AP and/or Station */
    if (FUNC6(prov_ctx->mgr_config.scheme.wifi_mode) != ESP_OK) {
        FUNC1(TAG, "Failed to set Wi-Fi mode");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }

    /* Don't release mutex yet as it is possible that right after
     * esp_wifi_connect()  is called below, the related Wi-Fi event
     * happens even before manager state is updated in the next
     * few lines causing the internal event handler to miss */

    /* Set Wi-Fi storage again to flash to keep the newly
     * provided credentials on NVS */
    if (FUNC7(WIFI_STORAGE_FLASH) != ESP_OK) {
        FUNC1(TAG, "Failed to set storage Wi-Fi");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }
    /* Configure Wi-Fi station with host credentials
     * provided during provisioning */
    if (FUNC5(ESP_IF_WIFI_STA, wifi_cfg) != ESP_OK) {
        FUNC1(TAG, "Failed to set Wi-Fi configuration");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }
    /* Connect to AP */
    if (FUNC4() != ESP_OK) {
        FUNC1(TAG, "Failed to connect Wi-Fi");
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }
    /* This delay allows channel change to complete */
    FUNC9(1000 / portTICK_PERIOD_MS);

    /* Reset Wi-Fi station state for provisioning app */
    prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
    prov_ctx->prov_state = WIFI_PROV_STATE_CRED_RECV;
    /* Execute user registered callback handler */
    FUNC8(WIFI_PROV_CRED_RECV, (void *)&wifi_cfg->sta, sizeof(wifi_cfg->sta));
    FUNC2(prov_ctx_lock);

    return ESP_OK;
}