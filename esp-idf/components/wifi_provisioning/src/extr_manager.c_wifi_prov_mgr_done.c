
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_4__ {int no_auto_stop; } ;
struct TYPE_5__ {TYPE_1__ capabilities; } ;
struct TYPE_6__ {TYPE_2__ mgr_info; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 TYPE_3__* prov_ctx ;
 int prov_ctx_lock ;
 int wifi_prov_mgr_stop_provisioning () ;

esp_err_t wifi_prov_mgr_done(void)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    bool auto_stop_enabled = 0;
    ACQUIRE_LOCK(prov_ctx_lock);
    if (prov_ctx && !prov_ctx->mgr_info.capabilities.no_auto_stop) {
        auto_stop_enabled = 1;
    }
    RELEASE_LOCK(prov_ctx_lock);


    if (auto_stop_enabled) {
        wifi_prov_mgr_stop_provisioning();
    }
    return ESP_OK;
}
