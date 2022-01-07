
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {scalar_t__ prov_state; void** ap_list; int scanning; int ** ap_list_sorted; TYPE_1__ pop; int * timer; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGD (int ,char*) ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 size_t MAX_SCAN_RESULTS ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 int WIFI_EVENT ;
 scalar_t__ WIFI_PROV_STATE_IDLE ;
 scalar_t__ WIFI_PROV_STATE_STARTING ;
 scalar_t__ WIFI_PROV_STATE_STOPPING ;
 int assert (int) ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 int esp_timer_delete (int *) ;
 int esp_timer_stop (int *) ;
 int free (void*) ;
 scalar_t__ pdPASS ;
 int portTICK_PERIOD_MS ;
 TYPE_2__* prov_ctx ;
 int prov_ctx_lock ;
 int prov_stop_task (void*) ;
 int tskIDLE_PRIORITY ;
 int vTaskDelay (int) ;
 int wifi_prov_mgr_event_handler_internal ;
 scalar_t__ xTaskCreate (int (*) (void*),char*,int,void*,int ,int *) ;

__attribute__((used)) static bool wifi_prov_mgr_stop_service(bool blocking)
{
    if (blocking) {


        while (prov_ctx && (
            prov_ctx->prov_state == WIFI_PROV_STATE_STARTING ||
            prov_ctx->prov_state == WIFI_PROV_STATE_STOPPING)) {
            RELEASE_LOCK(prov_ctx_lock);
            vTaskDelay(100 / portTICK_PERIOD_MS);
            ACQUIRE_LOCK(prov_ctx_lock);
        }
    } else {


        while (prov_ctx &&
            prov_ctx->prov_state == WIFI_PROV_STATE_STARTING) {
            RELEASE_LOCK(prov_ctx_lock);
            vTaskDelay(100 / portTICK_PERIOD_MS);
            ACQUIRE_LOCK(prov_ctx_lock);
        }

        if (prov_ctx && prov_ctx->prov_state == WIFI_PROV_STATE_STOPPING) {
            ESP_LOGD(TAG, "Provisioning is already stopping");
            return 0;
        }
    }

    if (!prov_ctx || prov_ctx->prov_state == WIFI_PROV_STATE_IDLE) {
        ESP_LOGD(TAG, "Provisioning not running");
        return 0;
    }


    if (prov_ctx->timer) {
        esp_timer_stop(prov_ctx->timer);
        esp_timer_delete(prov_ctx->timer);
        prov_ctx->timer = ((void*)0);
    }

    ESP_LOGD(TAG, "Stopping provisioning");
    prov_ctx->prov_state = WIFI_PROV_STATE_STOPPING;


    if (prov_ctx->pop.data) {
        free((void *)prov_ctx->pop.data);
        prov_ctx->pop.data = ((void*)0);
    }


    for (uint16_t channel = 0; channel < 14; channel++) {
        free(prov_ctx->ap_list[channel]);
        prov_ctx->ap_list[channel] = ((void*)0);
    }
    prov_ctx->scanning = 0;
    for (uint8_t i = 0; i < MAX_SCAN_RESULTS; i++) {
        prov_ctx->ap_list_sorted[i] = ((void*)0);
    }


    esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID,
                                 wifi_prov_mgr_event_handler_internal);
    esp_event_handler_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP,
                                 wifi_prov_mgr_event_handler_internal);

    if (blocking) {


        RELEASE_LOCK(prov_ctx_lock);
        prov_stop_task((void *)0);
        ACQUIRE_LOCK(prov_ctx_lock);
        prov_ctx->prov_state = WIFI_PROV_STATE_IDLE;
    } else {






        assert(xTaskCreate(prov_stop_task, "prov_stop_task", 4096, (void *)1,
                           tskIDLE_PRIORITY, ((void*)0)) == pdPASS);
        ESP_LOGD(TAG, "Provisioning scheduled for stopping");
    }
    return 1;
}
