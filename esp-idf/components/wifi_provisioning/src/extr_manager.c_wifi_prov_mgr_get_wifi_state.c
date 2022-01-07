
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_prov_sta_state_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int wifi_state; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

esp_err_t wifi_prov_mgr_get_wifi_state(wifi_prov_sta_state_t *state)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (prov_ctx == ((void*)0) || state == ((void*)0)) {
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }

    *state = prov_ctx->wifi_state;
    RELEASE_LOCK(prov_ctx_lock);
    return ESP_OK;
}
