#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* set_config_service ) (int /*<<< orphan*/ ,char const*,char const*) ;scalar_t__ (* prov_start ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* prov_stop ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ wifi_prov_scheme_t ;
typedef  int /*<<< orphan*/  wifi_prov_scan_handlers_t ;
typedef  int /*<<< orphan*/  wifi_prov_config_handlers_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  cJSON ;
struct TYPE_4__ {TYPE_2__ scheme; } ;
struct TYPE_6__ {int security; char* wifi_prov_handlers; char* wifi_scan_handlers; int /*<<< orphan*/ * pc; int /*<<< orphan*/  pop; int /*<<< orphan*/  prov_scheme_config; TYPE_1__ mgr_config; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 void* FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  protocomm_security0 ; 
 int /*<<< orphan*/  protocomm_security1 ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_3__* prov_ctx ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wifi_prov_config_data_handler ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/  wifi_prov_mgr_event_handler_internal ; 
 int /*<<< orphan*/  wifi_prov_scan_handler ; 

__attribute__((used)) static esp_err_t FUNC27(const char *service_name, const char *service_key)
{
    const wifi_prov_scheme_t *scheme = &prov_ctx->mgr_config.scheme;
    esp_err_t ret;

    /* Create new protocomm instance */
    prov_ctx->pc = FUNC13();
    if (prov_ctx->pc == NULL) {
        FUNC1(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }

    ret = scheme->set_config_service(prov_ctx->prov_scheme_config, service_name, service_key);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to configure service");
        FUNC12(prov_ctx->pc);
        return ret;
    }

    /* Start provisioning */
    ret = scheme->prov_start(prov_ctx->pc, prov_ctx->prov_scheme_config);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to start service");
        FUNC12(prov_ctx->pc);
        return ret;
    }

    /* Set version information / capabilities of provisioning service and application */
    cJSON *version_json = FUNC26();
    char *version_str = FUNC4(version_json);
    ret = FUNC15(prov_ctx->pc, "proto-ver", version_str);
    FUNC7(version_str);
    FUNC3(version_json);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to set version endpoint");
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    /* Set protocomm security type for endpoint */
    if (prov_ctx->security == 0) {
        ret = FUNC14(prov_ctx->pc, "prov-session",
                                     &protocomm_security0, NULL);
    } else if (prov_ctx->security == 1) {
        ret = FUNC14(prov_ctx->pc, "prov-session",
                                     &protocomm_security1, &prov_ctx->pop);
    } else {
        FUNC1(TAG, "Unsupported protocomm security version %d", prov_ctx->security);
        ret = ESP_ERR_INVALID_ARG;
    }
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to set security endpoint");
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    prov_ctx->wifi_prov_handlers = FUNC10(sizeof(wifi_prov_config_handlers_t));
    ret = FUNC8(prov_ctx->wifi_prov_handlers);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Failed to allocate memory for provisioning handlers");
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ESP_ERR_NO_MEM;
    }

    /* Add protocomm endpoint for Wi-Fi station configuration */
    ret = FUNC11(prov_ctx->pc, "prov-config",
                                 wifi_prov_config_data_handler,
                                 prov_ctx->wifi_prov_handlers);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to set provisioning endpoint");
        FUNC7(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    prov_ctx->wifi_scan_handlers = FUNC10(sizeof(wifi_prov_scan_handlers_t));
    ret = FUNC9(prov_ctx->wifi_scan_handlers);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Failed to allocate memory for Wi-Fi scan handlers");
        FUNC7(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ESP_ERR_NO_MEM;
    }

    /* Add endpoint for scanning Wi-Fi APs and sending scan list */
    ret = FUNC11(prov_ctx->pc, "prov-scan",
                                 wifi_prov_scan_handler,
                                 prov_ctx->wifi_scan_handlers);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to set Wi-Fi scan endpoint");
        FUNC7(prov_ctx->wifi_scan_handlers);
        FUNC7(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    /* Register global event handler */
    ret = FUNC5(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                     wifi_prov_mgr_event_handler_internal, NULL);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to register WiFi event handler");
        FUNC7(prov_ctx->wifi_scan_handlers);
        FUNC7(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    ret = FUNC5(IP_EVENT, IP_EVENT_STA_GOT_IP,
                                     wifi_prov_mgr_event_handler_internal, NULL);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to register IP event handler");
        FUNC6(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                     wifi_prov_mgr_event_handler_internal);
        FUNC7(prov_ctx->wifi_scan_handlers);
        FUNC7(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        FUNC12(prov_ctx->pc);
        return ret;
    }

    FUNC2(TAG, "Provisioning started with service name : %s ",
             service_name ? service_name : "<NULL>");
    return ESP_OK;
}