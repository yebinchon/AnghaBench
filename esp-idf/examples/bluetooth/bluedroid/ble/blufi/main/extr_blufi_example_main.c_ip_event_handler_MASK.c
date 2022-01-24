#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_mode_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;
struct TYPE_4__ {int sta_bssid_set; int /*<<< orphan*/  sta_ssid_len; int /*<<< orphan*/  sta_ssid; int /*<<< orphan*/  sta_bssid; } ;
typedef  TYPE_1__ esp_blufi_extra_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED_BIT ; 
 int /*<<< orphan*/  ESP_BLUFI_STA_CONN_SUCCESS ; 
#define  IP_EVENT_STA_GOT_IP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gl_sta_bssid ; 
 int /*<<< orphan*/  gl_sta_ssid ; 
 int /*<<< orphan*/  gl_sta_ssid_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    wifi_mode_t mode;

    switch (event_id) {
    case IP_EVENT_STA_GOT_IP: {
        esp_blufi_extra_info_t info;

        FUNC4(wifi_event_group, CONNECTED_BIT);
        FUNC1(&mode);

        FUNC3(&info, 0, sizeof(esp_blufi_extra_info_t));
        FUNC2(info.sta_bssid, gl_sta_bssid, 6);
        info.sta_bssid_set = true;
        info.sta_ssid = gl_sta_ssid;
        info.sta_ssid_len = gl_sta_ssid_len;
        FUNC0(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, &info);
        break;
    }
    default:
        break;
    }
    return;
}