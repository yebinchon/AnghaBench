
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scanning; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGE (int ,char*) ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

bool wifi_prov_mgr_wifi_scan_finished(void)
{
    bool scan_finished = 1;
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return scan_finished;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (!prov_ctx) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        RELEASE_LOCK(prov_ctx_lock);
        return scan_finished;
    }

    scan_finished = !prov_ctx->scanning;
    RELEASE_LOCK(prov_ctx_lock);
    return scan_finished;
}
