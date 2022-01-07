
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* set_config_service ) (int ,char const*,char const*) ;scalar_t__ (* prov_start ) (int *,int ) ;int (* prov_stop ) (int *) ;} ;
typedef TYPE_2__ wifi_prov_scheme_t ;
typedef int wifi_prov_scan_handlers_t ;
typedef int wifi_prov_config_handlers_t ;
typedef scalar_t__ esp_err_t ;
typedef int cJSON ;
struct TYPE_4__ {TYPE_2__ scheme; } ;
struct TYPE_6__ {int security; char* wifi_prov_handlers; char* wifi_scan_handlers; int * pc; int pop; int prov_scheme_config; TYPE_1__ mgr_config; } ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_EVENT_ANY_ID ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,char const*) ;
 scalar_t__ ESP_OK ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int TAG ;
 int WIFI_EVENT ;
 int cJSON_Delete (int *) ;
 char* cJSON_Print (int *) ;
 scalar_t__ esp_event_handler_register (int ,int ,int ,int *) ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 int free (char*) ;
 scalar_t__ get_wifi_prov_handlers (char*) ;
 scalar_t__ get_wifi_scan_handlers (char*) ;
 void* malloc (int) ;
 scalar_t__ protocomm_add_endpoint (int *,char*,int ,char*) ;
 int protocomm_delete (int *) ;
 int * protocomm_new () ;
 int protocomm_security0 ;
 int protocomm_security1 ;
 scalar_t__ protocomm_set_security (int *,char*,int *,int *) ;
 scalar_t__ protocomm_set_version (int *,char*,char*) ;
 TYPE_3__* prov_ctx ;
 scalar_t__ stub1 (int ,char const*,char const*) ;
 int stub10 (int *) ;
 scalar_t__ stub2 (int *,int ) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int stub6 (int *) ;
 int stub7 (int *) ;
 int stub8 (int *) ;
 int stub9 (int *) ;
 int wifi_prov_config_data_handler ;
 int * wifi_prov_get_info_json () ;
 int wifi_prov_mgr_event_handler_internal ;
 int wifi_prov_scan_handler ;

__attribute__((used)) static esp_err_t wifi_prov_mgr_start_service(const char *service_name, const char *service_key)
{
    const wifi_prov_scheme_t *scheme = &prov_ctx->mgr_config.scheme;
    esp_err_t ret;


    prov_ctx->pc = protocomm_new();
    if (prov_ctx->pc == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }

    ret = scheme->set_config_service(prov_ctx->prov_scheme_config, service_name, service_key);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to configure service");
        protocomm_delete(prov_ctx->pc);
        return ret;
    }


    ret = scheme->prov_start(prov_ctx->pc, prov_ctx->prov_scheme_config);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start service");
        protocomm_delete(prov_ctx->pc);
        return ret;
    }


    cJSON *version_json = wifi_prov_get_info_json();
    char *version_str = cJSON_Print(version_json);
    ret = protocomm_set_version(prov_ctx->pc, "proto-ver", version_str);
    free(version_str);
    cJSON_Delete(version_json);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set version endpoint");
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }


    if (prov_ctx->security == 0) {
        ret = protocomm_set_security(prov_ctx->pc, "prov-session",
                                     &protocomm_security0, ((void*)0));
    } else if (prov_ctx->security == 1) {
        ret = protocomm_set_security(prov_ctx->pc, "prov-session",
                                     &protocomm_security1, &prov_ctx->pop);
    } else {
        ESP_LOGE(TAG, "Unsupported protocomm security version %d", prov_ctx->security);
        ret = ESP_ERR_INVALID_ARG;
    }
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set security endpoint");
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }

    prov_ctx->wifi_prov_handlers = malloc(sizeof(wifi_prov_config_handlers_t));
    ret = get_wifi_prov_handlers(prov_ctx->wifi_prov_handlers);
    if (ret != ESP_OK) {
        ESP_LOGD(TAG, "Failed to allocate memory for provisioning handlers");
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ESP_ERR_NO_MEM;
    }


    ret = protocomm_add_endpoint(prov_ctx->pc, "prov-config",
                                 wifi_prov_config_data_handler,
                                 prov_ctx->wifi_prov_handlers);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set provisioning endpoint");
        free(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }

    prov_ctx->wifi_scan_handlers = malloc(sizeof(wifi_prov_scan_handlers_t));
    ret = get_wifi_scan_handlers(prov_ctx->wifi_scan_handlers);
    if (ret != ESP_OK) {
        ESP_LOGD(TAG, "Failed to allocate memory for Wi-Fi scan handlers");
        free(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ESP_ERR_NO_MEM;
    }


    ret = protocomm_add_endpoint(prov_ctx->pc, "prov-scan",
                                 wifi_prov_scan_handler,
                                 prov_ctx->wifi_scan_handlers);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set Wi-Fi scan endpoint");
        free(prov_ctx->wifi_scan_handlers);
        free(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }


    ret = esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                     wifi_prov_mgr_event_handler_internal, ((void*)0));
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to register WiFi event handler");
        free(prov_ctx->wifi_scan_handlers);
        free(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }

    ret = esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP,
                                     wifi_prov_mgr_event_handler_internal, ((void*)0));
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to register IP event handler");
        esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                     wifi_prov_mgr_event_handler_internal);
        free(prov_ctx->wifi_scan_handlers);
        free(prov_ctx->wifi_prov_handlers);
        scheme->prov_stop(prov_ctx->pc);
        protocomm_delete(prov_ctx->pc);
        return ret;
    }

    ESP_LOGI(TAG, "Provisioning started with service name : %s ",
             service_name ? service_name : "<NULL>");
    return ESP_OK;
}
