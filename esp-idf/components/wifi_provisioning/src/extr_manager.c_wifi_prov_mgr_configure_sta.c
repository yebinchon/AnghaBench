
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sta; } ;
typedef TYPE_3__ wifi_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_7__ {int wifi_mode; } ;
struct TYPE_8__ {TYPE_1__ scheme; } ;
struct TYPE_10__ {scalar_t__ prov_state; int wifi_state; TYPE_2__ mgr_config; } ;


 int ACQUIRE_LOCK (int ) ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 int ESP_IF_WIFI_STA ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 int WIFI_PROV_CRED_RECV ;
 scalar_t__ WIFI_PROV_STATE_CRED_RECV ;
 int WIFI_PROV_STA_CONNECTING ;
 int WIFI_STORAGE_FLASH ;
 int debug_print_wifi_credentials (int ,char*) ;
 scalar_t__ esp_wifi_connect () ;
 scalar_t__ esp_wifi_set_config (int ,TYPE_3__*) ;
 scalar_t__ esp_wifi_set_mode (int ) ;
 scalar_t__ esp_wifi_set_storage (int ) ;
 int execute_event_cb (int ,void*,int) ;
 int portTICK_PERIOD_MS ;
 TYPE_5__* prov_ctx ;
 int prov_ctx_lock ;
 int vTaskDelay (int) ;

esp_err_t wifi_prov_mgr_configure_sta(wifi_config_t *wifi_cfg)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    ACQUIRE_LOCK(prov_ctx_lock);
    if (!prov_ctx) {
        ESP_LOGE(TAG, "Invalid state of Provisioning app");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }
    if (prov_ctx->prov_state >= WIFI_PROV_STATE_CRED_RECV) {
        ESP_LOGE(TAG, "Wi-Fi credentials already received by provisioning app");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }
    debug_print_wifi_credentials(wifi_cfg->sta, "Received");


    if (esp_wifi_set_mode(prov_ctx->mgr_config.scheme.wifi_mode) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set Wi-Fi mode");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }
    if (esp_wifi_set_storage(WIFI_STORAGE_FLASH) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set storage Wi-Fi");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }


    if (esp_wifi_set_config(ESP_IF_WIFI_STA, wifi_cfg) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set Wi-Fi configuration");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }

    if (esp_wifi_connect() != ESP_OK) {
        ESP_LOGE(TAG, "Failed to connect Wi-Fi");
        RELEASE_LOCK(prov_ctx_lock);
        return ESP_FAIL;
    }

    vTaskDelay(1000 / portTICK_PERIOD_MS);


    prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
    prov_ctx->prov_state = WIFI_PROV_STATE_CRED_RECV;

    execute_event_cb(WIFI_PROV_CRED_RECV, (void *)&wifi_cfg->sta, sizeof(wifi_cfg->sta));
    RELEASE_LOCK(prov_ctx_lock);

    return ESP_OK;
}
