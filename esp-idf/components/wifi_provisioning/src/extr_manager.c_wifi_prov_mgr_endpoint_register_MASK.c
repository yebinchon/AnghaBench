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
typedef  int /*<<< orphan*/  protocomm_req_handler_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ prov_state; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STATE_STARTING ; 
 scalar_t__ WIFI_PROV_STATE_STOPPING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*) ; 
 TYPE_1__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 

esp_err_t FUNC4(const char *ep_name, protocomm_req_handler_t handler, void *user_ctx)
{
    if (!prov_ctx_lock) {
        FUNC1(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t err = ESP_FAIL;

    FUNC0(prov_ctx_lock);
    if (prov_ctx &&
        prov_ctx->prov_state > WIFI_PROV_STATE_STARTING &&
        prov_ctx->prov_state < WIFI_PROV_STATE_STOPPING) {
        err = FUNC3(prov_ctx->pc, ep_name, handler, user_ctx);
    }
    FUNC2(prov_ctx_lock);

    if (err != ESP_OK) {
        FUNC1(TAG, "Failed to register handler for endpoint");
    }
    return err;
}