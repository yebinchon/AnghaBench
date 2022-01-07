
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rssi; int authmode; int * bssid; int ssid; } ;
typedef TYPE_1__ wifi_ap_record_t ;
typedef size_t uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {size_t channel; } ;
struct TYPE_7__ {int scanning; size_t curr_channel; size_t* ap_list_len; int channels_per_group; TYPE_4__ scan_cfg; TYPE_1__** ap_list; TYPE_1__** ap_list_sorted; } ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MAX_SCAN_RESULTS ;
 int MIN (size_t,int) ;
 int TAG ;
 scalar_t__ calloc (size_t,int) ;
 scalar_t__ esp_wifi_scan_get_ap_num (size_t*) ;
 scalar_t__ esp_wifi_scan_get_ap_records (size_t*,TYPE_1__*) ;
 scalar_t__ esp_wifi_scan_start (TYPE_4__*,int) ;
 int free (TYPE_1__*) ;
 int portTICK_PERIOD_MS ;
 TYPE_2__* prov_ctx ;
 int vTaskDelay (int) ;

__attribute__((used)) static esp_err_t update_wifi_scan_results(void)
{
    if (!prov_ctx->scanning) {
        return ESP_ERR_INVALID_STATE;
    }
    ESP_LOGD(TAG, "Scan finished");

    esp_err_t ret = ESP_FAIL;
    uint16_t count = 0;
    uint16_t curr_channel = prov_ctx->curr_channel;

    if (prov_ctx->ap_list[curr_channel]) {
        free(prov_ctx->ap_list[curr_channel]);
        prov_ctx->ap_list[curr_channel] = ((void*)0);
        prov_ctx->ap_list_len[curr_channel] = 0;
    }

    if (esp_wifi_scan_get_ap_num(&count) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to get count of scanned APs");
        goto exit;
    }

    if (!count) {
        ESP_LOGD(TAG, "Scan result empty");
        ret = ESP_OK;
        goto exit;
    }

    prov_ctx->ap_list[curr_channel] = (wifi_ap_record_t *) calloc(count, sizeof(wifi_ap_record_t));
    if (!prov_ctx->ap_list[curr_channel]) {
        ESP_LOGE(TAG, "Failed to allocate memory for AP list");
        goto exit;
    }
    if (esp_wifi_scan_get_ap_records(&count, prov_ctx->ap_list[curr_channel]) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to get scanned AP records");
        goto exit;
    }
    prov_ctx->ap_list_len[curr_channel] = count;

    if (prov_ctx->channels_per_group) {
        ESP_LOGD(TAG, "Scan results for channel %d :", curr_channel);
    } else {
        ESP_LOGD(TAG, "Scan results :");
    }
    ESP_LOGD(TAG, "\tS.N. %-32s %-12s %s %s", "SSID", "BSSID", "RSSI", "AUTH");
    for (uint8_t i = 0; i < prov_ctx->ap_list_len[curr_channel]; i++) {
        ESP_LOGD(TAG, "\t[%2d] %-32s %02x%02x%02x%02x%02x%02x %4d %4d", i,
                 prov_ctx->ap_list[curr_channel][i].ssid,
                 prov_ctx->ap_list[curr_channel][i].bssid[0],
                 prov_ctx->ap_list[curr_channel][i].bssid[1],
                 prov_ctx->ap_list[curr_channel][i].bssid[2],
                 prov_ctx->ap_list[curr_channel][i].bssid[3],
                 prov_ctx->ap_list[curr_channel][i].bssid[4],
                 prov_ctx->ap_list[curr_channel][i].bssid[5],
                 prov_ctx->ap_list[curr_channel][i].rssi,
                 prov_ctx->ap_list[curr_channel][i].authmode);
    }


    {
        int rc = MIN(count, MAX_SCAN_RESULTS);
        int is = MAX_SCAN_RESULTS - rc - 1;
        while (rc > 0 && is >= 0) {
            if (prov_ctx->ap_list_sorted[is]) {
                if (prov_ctx->ap_list_sorted[is]->rssi > prov_ctx->ap_list[curr_channel][rc - 1].rssi) {
                    prov_ctx->ap_list_sorted[is + rc] = &prov_ctx->ap_list[curr_channel][rc - 1];
                    rc--;
                    continue;
                }
                prov_ctx->ap_list_sorted[is + rc] = prov_ctx->ap_list_sorted[is];
            }
            is--;
        }
        while (rc > 0) {
            prov_ctx->ap_list_sorted[rc - 1] = &prov_ctx->ap_list[curr_channel][rc - 1];
            rc--;
        }
    }

    ret = ESP_OK;
    exit:

    if (!prov_ctx->channels_per_group) {


        prov_ctx->scanning = 0;
        goto final;
    }

    curr_channel = prov_ctx->curr_channel = (prov_ctx->curr_channel + 1) % 14;
    if (ret != ESP_OK || curr_channel == 0) {
        prov_ctx->scanning = 0;
        goto final;
    }

    if ((curr_channel % prov_ctx->channels_per_group) == 0) {
        vTaskDelay(120 / portTICK_PERIOD_MS);
    }

    ESP_LOGD(TAG, "Scan starting on channel %u...", curr_channel);
    prov_ctx->scan_cfg.channel = curr_channel;
    ret = esp_wifi_scan_start(&prov_ctx->scan_cfg, 0);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start scan");
        prov_ctx->scanning = 0;
        goto final;
    }
    ESP_LOGD(TAG, "Scan started");

    final:

    return ret;
}
