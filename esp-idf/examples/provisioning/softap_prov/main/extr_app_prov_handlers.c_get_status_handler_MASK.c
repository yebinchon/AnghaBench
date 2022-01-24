#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_prov_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  channel; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_10__ {scalar_t__ wifi_state; int /*<<< orphan*/  fail_reason; TYPE_1__ conn_info; } ;
typedef  TYPE_2__ wifi_prov_config_get_data_t ;
struct TYPE_11__ {int /*<<< orphan*/  authmode; int /*<<< orphan*/  primary; scalar_t__ ssid; scalar_t__ bssid; } ;
typedef  TYPE_3__ wifi_ap_record_t ;
struct TYPE_12__ {int /*<<< orphan*/  ip; } ;
typedef  TYPE_4__ esp_netif_ip_info_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_PROV_STA_CONNECTED ; 
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC10(wifi_prov_config_get_data_t *resp_data, wifi_prov_ctx_t **ctx)
{
    /* Initialize to zero */
    FUNC9(resp_data, 0, sizeof(wifi_prov_config_get_data_t));

    if (FUNC3(&resp_data->wifi_state) != ESP_OK) {
        FUNC1(TAG, "Prov app not running");
        return ESP_FAIL;
    }

    if (resp_data->wifi_state == WIFI_PROV_STA_CONNECTED) {
        FUNC0(TAG, "Connected state");

        /* IP Addr assigned to STA */
        esp_netif_ip_info_t ip_info;
        FUNC6(FUNC5("WIFI_STA_DEF"), &ip_info);
        FUNC4(&ip_info.ip, resp_data->conn_info.ip_addr, sizeof(resp_data->conn_info.ip_addr));

        /* AP information to which STA is connected */
        wifi_ap_record_t ap_info;
        FUNC7(&ap_info);
        FUNC8(resp_data->conn_info.bssid, (char *)ap_info.bssid, sizeof(ap_info.bssid));
        FUNC8(resp_data->conn_info.ssid,  (char *)ap_info.ssid,  sizeof(ap_info.ssid));
        resp_data->conn_info.channel   = ap_info.primary;
        resp_data->conn_info.auth_mode = ap_info.authmode;
    } else if (resp_data->wifi_state == WIFI_PROV_STA_DISCONNECTED) {
        FUNC0(TAG, "Disconnected state");

        /* If disconnected, convey reason */
        FUNC2(&resp_data->fail_reason);
    } else {
        FUNC0(TAG, "Connecting state");
    }
    return ESP_OK;
}