
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_ap_record_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {int ** ap_list_sorted; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGE (int ,char*) ;
 size_t MAX_SCAN_RESULTS ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

const wifi_ap_record_t *wifi_prov_mgr_wifi_scan_result(uint16_t index)
{
    const wifi_ap_record_t *rval = ((void*)0);
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return rval;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (!prov_ctx) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        RELEASE_LOCK(prov_ctx_lock);
        return rval;
    }

    if (index < MAX_SCAN_RESULTS) {
        rval = prov_ctx->ap_list_sorted[index];
    }
    RELEASE_LOCK(prov_ctx_lock);
    return rval;
}
