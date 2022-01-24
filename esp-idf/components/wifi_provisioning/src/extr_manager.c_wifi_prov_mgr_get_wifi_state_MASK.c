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
typedef  int /*<<< orphan*/  wifi_prov_sta_state_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  wifi_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

esp_err_t FUNC3(wifi_prov_sta_state_t *state)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    FUNC0(prov_ctx_lock);
    if (prov_ctx == NULL || state == NULL) {
        FUNC2(prov_ctx_lock);
        return ESP_FAIL;
    }

    *state = prov_ctx->wifi_state;
    FUNC2(prov_ctx_lock);
    return ESP_OK;
}