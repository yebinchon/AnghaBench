
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prov_state; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGE (int ,char*) ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_PROV_STATE_IDLE ;
 int portTICK_PERIOD_MS ;
 TYPE_1__* prov_ctx ;
 int prov_ctx_lock ;
 int vTaskDelay (int) ;

void wifi_prov_mgr_wait(void)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return;
    }

    while (1) {
        ACQUIRE_LOCK(prov_ctx_lock);
        if (prov_ctx &&
            prov_ctx->prov_state != WIFI_PROV_STATE_IDLE) {
            RELEASE_LOCK(prov_ctx_lock);
            vTaskDelay(1000 / portTICK_PERIOD_MS);
            continue;
        }
        break;
    }
    RELEASE_LOCK(prov_ctx_lock);
}
