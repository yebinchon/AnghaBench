#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rssi; int /*<<< orphan*/  authmode; int /*<<< orphan*/ * bssid; int /*<<< orphan*/  ssid; } ;
typedef  TYPE_1__ wifi_ap_record_t ;
typedef  size_t uint8_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_8__ {size_t channel; } ;
struct TYPE_7__ {int scanning; size_t curr_channel; size_t* ap_list_len; int channels_per_group; TYPE_4__ scan_cfg; TYPE_1__** ap_list; TYPE_1__** ap_list_sorted; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int MAX_SCAN_RESULTS ; 
 int FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 scalar_t__ FUNC4 (size_t*) ; 
 scalar_t__ FUNC5 (size_t*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int portTICK_PERIOD_MS ; 
 TYPE_2__* prov_ctx ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static esp_err_t FUNC9(void)
{
    if (!prov_ctx->scanning) {
        return ESP_ERR_INVALID_STATE;
    }
    FUNC0(TAG, "Scan finished");

    esp_err_t ret = ESP_FAIL;
    uint16_t count = 0;
    uint16_t curr_channel = prov_ctx->curr_channel;

    if (prov_ctx->ap_list[curr_channel]) {
        FUNC7(prov_ctx->ap_list[curr_channel]);
        prov_ctx->ap_list[curr_channel] = NULL;
        prov_ctx->ap_list_len[curr_channel] = 0;
    }

    if (FUNC4(&count) != ESP_OK) {
        FUNC1(TAG, "Failed to get count of scanned APs");
        goto exit;
    }

    if (!count) {
        FUNC0(TAG, "Scan result empty");
        ret = ESP_OK;
        goto exit;
    }

    prov_ctx->ap_list[curr_channel] = (wifi_ap_record_t *) FUNC3(count, sizeof(wifi_ap_record_t));
    if (!prov_ctx->ap_list[curr_channel]) {
        FUNC1(TAG, "Failed to allocate memory for AP list");
        goto exit;
    }
    if (FUNC5(&count, prov_ctx->ap_list[curr_channel]) != ESP_OK) {
        FUNC1(TAG, "Failed to get scanned AP records");
        goto exit;
    }
    prov_ctx->ap_list_len[curr_channel] = count;

    if (prov_ctx->channels_per_group) {
        FUNC0(TAG, "Scan results for channel %d :", curr_channel);
    } else {
        FUNC0(TAG, "Scan results :");
    }
    FUNC0(TAG, "\tS.N. %-32s %-12s %s %s", "SSID", "BSSID", "RSSI", "AUTH");
    for (uint8_t i = 0; i < prov_ctx->ap_list_len[curr_channel]; i++) {
        FUNC0(TAG, "\t[%2d] %-32s %02x%02x%02x%02x%02x%02x %4d %4d", i,
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

    /* Store results in sorted list */
    {
        int rc = FUNC2(count, MAX_SCAN_RESULTS);
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
        /* All channel scan was performed
         * so nothing more to do */
        prov_ctx->scanning = false;
        goto final;
    }

    curr_channel = prov_ctx->curr_channel = (prov_ctx->curr_channel + 1) % 14;
    if (ret != ESP_OK || curr_channel == 0) {
        prov_ctx->scanning = false;
        goto final;
    }

    if ((curr_channel % prov_ctx->channels_per_group) == 0) {
        FUNC8(120 / portTICK_PERIOD_MS);
    }

    FUNC0(TAG, "Scan starting on channel %u...", curr_channel);
    prov_ctx->scan_cfg.channel = curr_channel;
    ret = FUNC6(&prov_ctx->scan_cfg, false);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Failed to start scan");
        prov_ctx->scanning = false;
        goto final;
    }
    FUNC0(TAG, "Scan started");

    final:

    return ret;
}