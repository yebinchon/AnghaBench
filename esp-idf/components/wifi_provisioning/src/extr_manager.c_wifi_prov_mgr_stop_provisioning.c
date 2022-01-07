
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGE (int ,char*) ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 int prov_ctx_lock ;
 int wifi_prov_mgr_stop_service (int ) ;

void wifi_prov_mgr_stop_provisioning(void)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return;
    }

    ACQUIRE_LOCK(prov_ctx_lock);







    wifi_prov_mgr_stop_service(0);

    RELEASE_LOCK(prov_ctx_lock);
}
