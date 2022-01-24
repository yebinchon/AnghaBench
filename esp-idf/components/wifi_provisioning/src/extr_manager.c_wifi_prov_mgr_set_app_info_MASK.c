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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  cJSON ;
struct TYPE_2__ {scalar_t__ prov_state; int /*<<< orphan*/ * app_info_json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

esp_err_t FUNC9(const char *label, const char *version,
                                     const char**capabilities, size_t total_capabilities)
{
    if (!label || !version || !capabilities) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t ret = ESP_FAIL;
    FUNC0(prov_ctx_lock);

    if (prov_ctx && prov_ctx->prov_state == WIFI_PROV_STATE_IDLE) {
        if (!prov_ctx->app_info_json) {
            prov_ctx->app_info_json = FUNC7();
        }

        cJSON *new_entry_json = FUNC7();
        cJSON *capabilities_json = FUNC6();
        FUNC4(prov_ctx->app_info_json, label, new_entry_json);

        /* Version ("ver") */
        FUNC5(new_entry_json, "ver", version);

        /* List of capabilities ("cap") */
        FUNC4(new_entry_json, "cap", capabilities_json);
        for (unsigned int i = 0; i < total_capabilities; i++) {
            if (capabilities[i]) {
                FUNC3(capabilities_json, FUNC8(capabilities[i]));
            }
        }
        ret = ESP_OK;
    } else {
        ret = ESP_ERR_INVALID_STATE;
    }

    FUNC2(prov_ctx_lock);
    return ret;
}