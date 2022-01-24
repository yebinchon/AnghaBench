#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* wifi_prov_cb_func_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
struct TYPE_9__ {void* user_data; int /*<<< orphan*/  (* event_cb ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {void* user_data; int /*<<< orphan*/  (* event_cb ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* delete_config ) (scalar_t__) ;} ;
struct TYPE_10__ {TYPE_3__ scheme_event_handler; TYPE_2__ app_event_handler; TYPE_1__ scheme; } ;
struct TYPE_11__ {TYPE_4__ mgr_config; scalar_t__ prov_scheme_config; scalar_t__ app_info_json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_PROV_DEINIT ; 
 int /*<<< orphan*/  WIFI_PROV_END ; 
 int /*<<< orphan*/  WIFI_PROV_EVENT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 TYPE_5__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int) ; 

void FUNC9(void)
{
    if (!prov_ctx_lock) {
        FUNC2(TAG, "Provisioning manager not initialized");
        return;
    }

    FUNC0(prov_ctx_lock);

    /* This will do one of these:
     * 1) if found running, stop the provisioning service (returns true)
     * 2) if service was already in the process of termination, this will
     *    wait till the service is stopped (returns false)
     * 3) if service was not running, this will return immediately (returns false)
     */
    bool service_was_running = FUNC8(1);

     /* If service was not running, its also possible that manager
      * was not even initialized */
    if (!service_was_running && !prov_ctx) {
        FUNC1(TAG, "Manager already de-initialized");
        FUNC3(prov_ctx_lock);
        return;
    }

    if (prov_ctx->app_info_json) {
        FUNC4(prov_ctx->app_info_json);
    }

    if (prov_ctx->prov_scheme_config) {
        prov_ctx->mgr_config.scheme.delete_config(prov_ctx->prov_scheme_config);
    }

    /* Extract the callbacks to be called post deinit */
    wifi_prov_cb_func_t app_cb = prov_ctx->mgr_config.app_event_handler.event_cb;
    void *app_data = prov_ctx->mgr_config.app_event_handler.user_data;

    wifi_prov_cb_func_t scheme_cb = prov_ctx->mgr_config.scheme_event_handler.event_cb;
    void *scheme_data = prov_ctx->mgr_config.scheme_event_handler.user_data;

    /* Free manager context */
    FUNC6(prov_ctx);
    prov_ctx = NULL;
    FUNC3(prov_ctx_lock);

    /* If a running service was also stopped during de-initialization
     * then WIFI_PROV_END event also needs to be emitted before deinit */
    if (service_was_running) {
        FUNC1(TAG, "execute_event_cb : %d", WIFI_PROV_END);
        if (scheme_cb) {
            scheme_cb(scheme_data, WIFI_PROV_END, NULL);
        }
        if (app_cb) {
            app_cb(app_data, WIFI_PROV_END, NULL);
        }
        if (FUNC5(WIFI_PROV_EVENT, WIFI_PROV_END, NULL, 0, portMAX_DELAY) != ESP_OK) {
            FUNC2(TAG, "Failed to post event WIFI_PROV_END");
        }
    }

    FUNC1(TAG, "execute_event_cb : %d", WIFI_PROV_DEINIT);

    /* Execute deinit event callbacks */
    if (scheme_cb) {
        scheme_cb(scheme_data, WIFI_PROV_DEINIT, NULL);
    }
    if (app_cb) {
        app_cb(app_data, WIFI_PROV_DEINIT, NULL);
    }
    if (FUNC5(WIFI_PROV_EVENT, WIFI_PROV_DEINIT, NULL, 0, portMAX_DELAY) != ESP_OK) {
        FUNC2(TAG, "Failed to post event WIFI_PROV_DEINIT");
    }
}