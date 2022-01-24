#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_sta_config_t ;
typedef  int /*<<< orphan*/  wifi_event_sta_wps_fail_reason_t ;
typedef  int /*<<< orphan*/  u8 ;
struct wps_sm {int /*<<< orphan*/  wps_success_cb_timer; int /*<<< orphan*/  wps_msg_timeout_timer; int /*<<< orphan*/  config; scalar_t__ ssid_len; int /*<<< orphan*/ * ssid; int /*<<< orphan*/ * bssid; TYPE_1__* wps; scalar_t__ discover_ssid_cnt; scalar_t__ scan_cnt; } ;
typedef  int /*<<< orphan*/  reason_code ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SEND_M1 ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_WPS_ER_FAILED ; 
 int /*<<< orphan*/  WPS_STATUS_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(wifi_event_sta_wps_fail_reason_t reason_code)
{
    struct wps_sm *sm = gWpsSm;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    FUNC6(WPS_STATUS_DISABLE);
    sm->scan_cnt = 0;
    sm->discover_ssid_cnt = 0;
    sm->wps->state = SEND_M1;
    FUNC4(sm->bssid, ETH_ALEN);
    FUNC4(sm->ssid, 32);
    sm->ssid_len = 0;
    FUNC4((u8 *)&sm->config, sizeof(wifi_sta_config_t));

    FUNC1();
    FUNC3(&sm->wps_msg_timeout_timer);
    FUNC3(&sm->wps_success_cb_timer);

    FUNC2();

    FUNC5(MSG_DEBUG, "Write wps_fail_information");
    
    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, &reason_code, sizeof(reason_code), portMAX_DELAY);

    return ESP_OK;
}