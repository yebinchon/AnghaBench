#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bssid_set; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * password; int /*<<< orphan*/ * ssid; } ;
struct TYPE_7__ {TYPE_1__ sta; } ;
typedef  TYPE_2__ wifi_config_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int bssid_set; int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; } ;
typedef  TYPE_3__ smartconfig_event_got_ssid_pswd_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED_BIT ; 
 int /*<<< orphan*/  ESPTOUCH_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ IP_EVENT ; 
 scalar_t__ IP_EVENT_STA_GOT_IP ; 
 scalar_t__ SC_EVENT ; 
 scalar_t__ SC_EVENT_FOUND_CHANNEL ; 
 scalar_t__ SC_EVENT_GOT_SSID_PSWD ; 
 scalar_t__ SC_EVENT_SCAN_DONE ; 
 scalar_t__ SC_EVENT_SEND_ACK_DONE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_EVENT ; 
 scalar_t__ WIFI_EVENT_STA_DISCONNECTED ; 
 scalar_t__ WIFI_EVENT_STA_START ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_wifi_event_group ; 
 int /*<<< orphan*/  smartconfig_example_task ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void* arg, esp_event_base_t event_base, 
                                int32_t event_id, void* event_data)
{
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        FUNC9(smartconfig_example_task, "smartconfig_example_task", 4096, NULL, 3, NULL);
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        FUNC3();
        FUNC7(s_wifi_event_group, CONNECTED_BIT);
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        FUNC8(s_wifi_event_group, CONNECTED_BIT);
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE) {
        FUNC1(TAG, "Scan done");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL) {
        FUNC1(TAG, "Found channel");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD) {
        FUNC1(TAG, "Got SSID and password");

        smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *)event_data;
        wifi_config_t wifi_config;
        uint8_t ssid[33] = { 0 };
        uint8_t password[65] = { 0 };

        FUNC2(&wifi_config, sizeof(wifi_config_t));
        FUNC6(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
        FUNC6(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));
        wifi_config.sta.bssid_set = evt->bssid_set;
        if (wifi_config.sta.bssid_set == true) {
            FUNC6(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
        }

        FUNC6(ssid, evt->ssid, sizeof(evt->ssid));
        FUNC6(password, evt->password, sizeof(evt->password));
        FUNC1(TAG, "SSID:%s", ssid);
        FUNC1(TAG, "PASSWORD:%s", password);

        FUNC0( FUNC4() );
        FUNC0( FUNC5(ESP_IF_WIFI_STA, &wifi_config) );
        FUNC0( FUNC3() );
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE) {
        FUNC8(s_wifi_event_group, ESPTOUCH_DONE_BIT);
    }
}