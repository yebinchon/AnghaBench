#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {scalar_t__ prov_state; void** ap_list; int scanning; int /*<<< orphan*/ ** ap_list_sorted; TYPE_1__ pop; int /*<<< orphan*/ * timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 size_t MAX_SCAN_RESULTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 scalar_t__ WIFI_PROV_STATE_IDLE ; 
 scalar_t__ WIFI_PROV_STATE_STARTING ; 
 scalar_t__ WIFI_PROV_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ pdPASS ; 
 int portTICK_PERIOD_MS ; 
 TYPE_2__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  tskIDLE_PRIORITY ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  wifi_prov_mgr_event_handler_internal ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  (*) (void*),char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(bool blocking)
{
    if (blocking) {
        /* Wait for any ongoing calls to wifi_prov_mgr_start_service() or
         * wifi_prov_mgr_stop_service() from another thread to finish */
        while (prov_ctx && (
            prov_ctx->prov_state == WIFI_PROV_STATE_STARTING ||
            prov_ctx->prov_state == WIFI_PROV_STATE_STOPPING)) {
            FUNC2(prov_ctx_lock);
            FUNC9(100 / portTICK_PERIOD_MS);
            FUNC0(prov_ctx_lock);
        }
    } else {
        /* Wait for any ongoing call to wifi_prov_mgr_start_service()
         * from another thread to finish */
        while (prov_ctx &&
            prov_ctx->prov_state == WIFI_PROV_STATE_STARTING) {
            FUNC2(prov_ctx_lock);
            FUNC9(100 / portTICK_PERIOD_MS);
            FUNC0(prov_ctx_lock);
        }

        if (prov_ctx && prov_ctx->prov_state == WIFI_PROV_STATE_STOPPING) {
            FUNC1(TAG, "Provisioning is already stopping");
            return false;
        }
    }

    if (!prov_ctx || prov_ctx->prov_state == WIFI_PROV_STATE_IDLE) {
        FUNC1(TAG, "Provisioning not running");
        return false;
    }

    /* Timer not needed anymore */
    if (prov_ctx->timer) {
        FUNC6(prov_ctx->timer);
        FUNC5(prov_ctx->timer);
        prov_ctx->timer = NULL;
    }

    FUNC1(TAG, "Stopping provisioning");
    prov_ctx->prov_state = WIFI_PROV_STATE_STOPPING;

    /* Free proof of possession */
    if (prov_ctx->pop.data) {
        FUNC7((void *)prov_ctx->pop.data);
        prov_ctx->pop.data = NULL;
    }

    /* Delete all scan results */
    for (uint16_t channel = 0; channel < 14; channel++) {
        FUNC7(prov_ctx->ap_list[channel]);
        prov_ctx->ap_list[channel] = NULL;
    }
    prov_ctx->scanning = false;
    for (uint8_t i = 0; i < MAX_SCAN_RESULTS; i++) {
        prov_ctx->ap_list_sorted[i] = NULL;
    }

    /* Remove event handler */
    FUNC4(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                 wifi_prov_mgr_event_handler_internal);
    FUNC4(IP_EVENT, IP_EVENT_STA_GOT_IP,
                                 wifi_prov_mgr_event_handler_internal);

    if (blocking) {
        /* Run the cleanup without launching a separate task. Also the
         * WIFI_PROV_END event is not emitted in this case */
        FUNC2(prov_ctx_lock);
        FUNC8((void *)0);
        FUNC0(prov_ctx_lock);
        prov_ctx->prov_state = WIFI_PROV_STATE_IDLE;
    } else {
        /* Launch cleanup task to perform the cleanup asynchronously.
         * It is important to do this asynchronously because, there are
         * situations in which the transport level resources have to be
         * released - some duration after - returning from a call to
         * wifi_prov_mgr_stop_provisioning(), like when it is called
         * inside a protocomm handler */
        FUNC3(FUNC10(prov_stop_task, "prov_stop_task", 4096, (void *)1,
                           tskIDLE_PRIORITY, NULL) == pdPASS);
        FUNC1(TAG, "Provisioning scheduled for stopping");
    }
    return true;
}