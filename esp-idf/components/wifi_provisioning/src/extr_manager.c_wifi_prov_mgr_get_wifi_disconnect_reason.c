
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_prov_sta_fail_reason_t ;
typedef int esp_err_t ;
struct TYPE_2__ {scalar_t__ wifi_state; int wifi_disconnect_reason; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

esp_err_t wifi_prov_mgr_get_wifi_disconnect_reason(wifi_prov_sta_fail_reason_t *reason)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (prov_ctx == ((void*)0) || reason == ((void*)0)) {
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }

    if (prov_ctx->wifi_state != WIFI_PROV_STA_DISCONNECTED) {
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }

    *reason = prov_ctx->wifi_disconnect_reason;
    RELEASE_LOCK(prov_ctx_lock);
    return ESP_OK;
}
