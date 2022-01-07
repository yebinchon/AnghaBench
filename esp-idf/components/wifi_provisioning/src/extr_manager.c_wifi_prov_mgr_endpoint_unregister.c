
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prov_state; int pc; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGE (int ,char*) ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_PROV_STATE_STARTING ;
 scalar_t__ WIFI_PROV_STATE_STOPPING ;
 int protocomm_remove_endpoint (int ,char const*) ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;

void wifi_prov_mgr_endpoint_unregister(const char *ep_name)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (prov_ctx &&
        prov_ctx->prov_state > WIFI_PROV_STATE_STARTING &&
        prov_ctx->prov_state < WIFI_PROV_STATE_STOPPING) {
        protocomm_remove_endpoint(prov_ctx->pc, ep_name);
    }
    RELEASE_LOCK(prov_ctx_lock);
}
