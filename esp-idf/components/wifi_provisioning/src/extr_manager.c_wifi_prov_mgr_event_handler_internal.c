
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wifi_prov_sta_fail_reason_t ;
struct TYPE_7__ {int reason; } ;
typedef TYPE_3__ wifi_event_sta_disconnected_t ;
typedef int reason ;
typedef scalar_t__ esp_event_base_t ;
struct TYPE_5__ {int no_auto_stop; } ;
struct TYPE_6__ {TYPE_1__ capabilities; } ;
struct TYPE_8__ {scalar_t__ prov_state; scalar_t__ wifi_state; int wifi_disconnect_reason; int timer; TYPE_2__ mgr_info; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_EVENT ;
 int WIFI_EVENT_SCAN_DONE ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int WIFI_EVENT_STA_START ;
 int WIFI_PROV_CRED_FAIL ;
 int WIFI_PROV_CRED_SUCCESS ;
 scalar_t__ WIFI_PROV_STATE_CRED_RECV ;
 scalar_t__ WIFI_PROV_STATE_FAIL ;
 scalar_t__ WIFI_PROV_STATE_STARTED ;
 scalar_t__ WIFI_PROV_STATE_SUCCESS ;
 int WIFI_PROV_STA_AP_NOT_FOUND ;
 int WIFI_PROV_STA_AUTH_ERROR ;
 scalar_t__ WIFI_PROV_STA_CONNECTED ;
 void* WIFI_PROV_STA_CONNECTING ;
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ;






 int esp_timer_start_once (int ,int) ;
 int esp_wifi_connect () ;
 int execute_event_cb (int ,void*,int) ;
 TYPE_4__* prov_ctx ;
 int prov_ctx_lock ;
 int update_wifi_scan_results () ;

__attribute__((used)) static void wifi_prov_mgr_event_handler_internal(
    void* arg, esp_event_base_t event_base, int event_id, void* event_data)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return;
    }
    ACQUIRE_LOCK(prov_ctx_lock);




    if (!prov_ctx) {
        RELEASE_LOCK(prov_ctx_lock);
        return;
    }


    if (prov_ctx->prov_state == WIFI_PROV_STATE_STARTED &&
        event_base == WIFI_EVENT &&
        event_id == WIFI_EVENT_SCAN_DONE) {
        update_wifi_scan_results();
    }



    if (prov_ctx->prov_state != WIFI_PROV_STATE_CRED_RECV) {
        RELEASE_LOCK(prov_ctx_lock);
        return;
    }

    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        ESP_LOGI(TAG, "STA Start");




        prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ESP_LOGI(TAG, "STA Got IP");

        prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTED;
        prov_ctx->prov_state = WIFI_PROV_STATE_SUCCESS;



        if (!prov_ctx->mgr_info.capabilities.no_auto_stop) {
            ESP_LOGD(TAG, "Starting 30s timer for stop_prov_timer_cb()");
            esp_timer_start_once(prov_ctx->timer, 30000 * 1000U);
        }


        execute_event_cb(WIFI_PROV_CRED_SUCCESS, ((void*)0), 0);
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGE(TAG, "STA Disconnected");

        prov_ctx->wifi_state = WIFI_PROV_STA_DISCONNECTED;

        wifi_event_sta_disconnected_t* disconnected = (wifi_event_sta_disconnected_t*) event_data;
        ESP_LOGE(TAG, "Disconnect reason : %d", disconnected->reason);


        switch (disconnected->reason) {
        case 131:
        case 133:
        case 130:
        case 132:
        case 129:
            ESP_LOGE(TAG, "STA Auth Error");
            prov_ctx->wifi_disconnect_reason = WIFI_PROV_STA_AUTH_ERROR;
            break;
        case 128:
            ESP_LOGE(TAG, "STA AP Not found");
            prov_ctx->wifi_disconnect_reason = WIFI_PROV_STA_AP_NOT_FOUND;
            break;
        default:


            prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
            esp_wifi_connect();
        }



        if (prov_ctx->wifi_state == WIFI_PROV_STA_DISCONNECTED) {
            prov_ctx->prov_state = WIFI_PROV_STATE_FAIL;
            wifi_prov_sta_fail_reason_t reason = prov_ctx->wifi_disconnect_reason;

            execute_event_cb(WIFI_PROV_CRED_FAIL, (void *)&reason, sizeof(reason));
        }
    }

    RELEASE_LOCK(prov_ctx_lock);
}
