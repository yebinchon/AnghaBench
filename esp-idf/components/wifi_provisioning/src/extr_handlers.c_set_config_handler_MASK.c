#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_prov_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;
typedef  TYPE_2__ wifi_prov_config_set_data_t ;
struct TYPE_7__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_9__ {TYPE_1__ sta; } ;
typedef  TYPE_3__ wifi_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC7(const wifi_prov_config_set_data_t *req_data, wifi_prov_ctx_t **ctx)
{
    wifi_config_t *wifi_cfg = FUNC3(ctx);
    if (wifi_cfg) {
        FUNC2(ctx);
    }

    wifi_cfg = FUNC4(ctx);
    if (!wifi_cfg) {
        FUNC1(TAG, "Unable to allocate Wi-Fi config");
        return ESP_ERR_NO_MEM;
    }

    FUNC0(TAG, "Wi-Fi Credentials Received");

    /* Using strncpy allows the max SSID length to be 32 bytes (as per 802.11 standard).
     * But this doesn't guarantee that the saved SSID will be null terminated, because
     * wifi_cfg->sta.ssid is also 32 bytes long (without extra 1 byte for null character) */
    FUNC6((char *) wifi_cfg->sta.ssid, req_data->ssid, sizeof(wifi_cfg->sta.ssid));

    /* Using strlcpy allows both max passphrase length (63 bytes) and ensures null termination
     * because size of wifi_cfg->sta.password is 64 bytes (1 extra byte for null character) */
    FUNC5((char *) wifi_cfg->sta.password, req_data->password, sizeof(wifi_cfg->sta.password));
    return ESP_OK;
}