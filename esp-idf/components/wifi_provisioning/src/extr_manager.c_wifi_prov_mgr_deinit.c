
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* wifi_prov_cb_func_t ) (void*,int ,int *) ;
struct TYPE_9__ {void* user_data; int (* event_cb ) (void*,int ,int *) ;} ;
struct TYPE_8__ {void* user_data; int (* event_cb ) (void*,int ,int *) ;} ;
struct TYPE_7__ {int (* delete_config ) (scalar_t__) ;} ;
struct TYPE_10__ {TYPE_3__ scheme_event_handler; TYPE_2__ app_event_handler; TYPE_1__ scheme; } ;
struct TYPE_11__ {TYPE_4__ mgr_config; scalar_t__ prov_scheme_config; scalar_t__ app_info_json; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 int WIFI_PROV_DEINIT ;
 int WIFI_PROV_END ;
 int WIFI_PROV_EVENT ;
 int cJSON_Delete (scalar_t__) ;
 scalar_t__ esp_event_post (int ,int ,int *,int ,int ) ;
 int free (TYPE_5__*) ;
 int portMAX_DELAY ;
 TYPE_5__* prov_ctx ;
 int prov_ctx_lock ;
 int stub1 (scalar_t__) ;
 int wifi_prov_mgr_stop_service (int) ;

void wifi_prov_mgr_deinit(void)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return;
    }

    ACQUIRE_LOCK(prov_ctx_lock);







    bool service_was_running = wifi_prov_mgr_stop_service(1);



    if (!service_was_running && !prov_ctx) {
        ESP_LOGD(TAG, "Manager already de-initialized");
        RELEASE_LOCK(prov_ctx_lock);
        return;
    }

    if (prov_ctx->app_info_json) {
        cJSON_Delete(prov_ctx->app_info_json);
    }

    if (prov_ctx->prov_scheme_config) {
        prov_ctx->mgr_config.scheme.delete_config(prov_ctx->prov_scheme_config);
    }


    wifi_prov_cb_func_t app_cb = prov_ctx->mgr_config.app_event_handler.event_cb;
    void *app_data = prov_ctx->mgr_config.app_event_handler.user_data;

    wifi_prov_cb_func_t scheme_cb = prov_ctx->mgr_config.scheme_event_handler.event_cb;
    void *scheme_data = prov_ctx->mgr_config.scheme_event_handler.user_data;


    free(prov_ctx);
    prov_ctx = ((void*)0);
    RELEASE_LOCK(prov_ctx_lock);



    if (service_was_running) {
        ESP_LOGD(TAG, "execute_event_cb : %d", WIFI_PROV_END);
        if (scheme_cb) {
            scheme_cb(scheme_data, WIFI_PROV_END, ((void*)0));
        }
        if (app_cb) {
            app_cb(app_data, WIFI_PROV_END, ((void*)0));
        }
        if (esp_event_post(WIFI_PROV_EVENT, WIFI_PROV_END, ((void*)0), 0, portMAX_DELAY) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to post event WIFI_PROV_END");
        }
    }

    ESP_LOGD(TAG, "execute_event_cb : %d", WIFI_PROV_DEINIT);


    if (scheme_cb) {
        scheme_cb(scheme_data, WIFI_PROV_DEINIT, ((void*)0));
    }
    if (app_cb) {
        app_cb(app_data, WIFI_PROV_DEINIT, ((void*)0));
    }
    if (esp_event_post(WIFI_PROV_EVENT, WIFI_PROV_DEINIT, ((void*)0), 0, portMAX_DELAY) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to post event WIFI_PROV_DEINIT");
    }
}
