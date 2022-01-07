
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int cJSON ;
struct TYPE_2__ {scalar_t__ prov_state; int * app_info_json; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_PROV_STATE_IDLE ;
 int cJSON_AddItemToArray (int *,int ) ;
 int cJSON_AddItemToObject (int *,char const*,int *) ;
 int cJSON_AddStringToObject (int *,char*,char const*) ;
 int * cJSON_CreateArray () ;
 void* cJSON_CreateObject () ;
 int cJSON_CreateString (char const*) ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

esp_err_t wifi_prov_mgr_set_app_info(const char *label, const char *version,
                                     const char**capabilities, size_t total_capabilities)
{
    if (!label || !version || !capabilities) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t ret = ESP_FAIL;
    ACQUIRE_LOCK(prov_ctx_lock);

    if (prov_ctx && prov_ctx->prov_state == WIFI_PROV_STATE_IDLE) {
        if (!prov_ctx->app_info_json) {
            prov_ctx->app_info_json = cJSON_CreateObject();
        }

        cJSON *new_entry_json = cJSON_CreateObject();
        cJSON *capabilities_json = cJSON_CreateArray();
        cJSON_AddItemToObject(prov_ctx->app_info_json, label, new_entry_json);


        cJSON_AddStringToObject(new_entry_json, "ver", version);


        cJSON_AddItemToObject(new_entry_json, "cap", capabilities_json);
        for (unsigned int i = 0; i < total_capabilities; i++) {
            if (capabilities[i]) {
                cJSON_AddItemToArray(capabilities_json, cJSON_CreateString(capabilities[i]));
            }
        }
        ret = ESP_OK;
    } else {
        ret = ESP_ERR_INVALID_STATE;
    }

    RELEASE_LOCK(prov_ctx_lock);
    return ret;
}
