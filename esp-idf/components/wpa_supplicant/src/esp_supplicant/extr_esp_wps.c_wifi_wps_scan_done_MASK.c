#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_sta_config_t ;
struct TYPE_3__ {int /*<<< orphan*/  sta; } ;
typedef  TYPE_1__ wifi_config_t ;
struct wps_sm {int discover_ssid_cnt; scalar_t__ scan_cnt; int ignore_sel_reg; int /*<<< orphan*/  wps_scan_timer; int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP ; 
 scalar_t__ WPS_IGNORE_SEL_REG_MAX_CNT ; 
 scalar_t__ WPS_STATUS_DISABLE ; 
 scalar_t__ WPS_STATUS_PENDING ; 
 scalar_t__ WPS_STATUS_SCANNING ; 
 scalar_t__ WPS_TYPE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

void
FUNC10(void *arg, STATUS status)
{
    struct wps_sm *sm = gWpsSm;
    wifi_config_t wifi_config;

    if (FUNC8() == WPS_TYPE_DISABLE) {
        return;
    }

    if (!sm) {
        return;
    }

    if (sm->discover_ssid_cnt == 1) {
        FUNC9(WPS_STATUS_PENDING);
    } else if (sm->discover_ssid_cnt == 0)  {
        FUNC9(WPS_STATUS_SCANNING);
    } else {
        FUNC6(MSG_INFO, "PBC session overlap!");
        FUNC9(WPS_STATUS_DISABLE);
        FUNC0(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP, 0, 0, portMAX_DELAY);
    }

    FUNC6(MSG_DEBUG, "wps scan_done discover_ssid_cnt = %d", sm->discover_ssid_cnt);

    sm->discover_ssid_cnt = 0;

    if (FUNC7() == WPS_STATUS_PENDING) {
        FUNC2();

        FUNC5(&wifi_config.sta, &sm->config, sizeof(wifi_sta_config_t));
        FUNC3(0, &wifi_config);

        FUNC6(MSG_DEBUG, "WPS: neg start");
        FUNC1();
    } else if (FUNC7() == WPS_STATUS_SCANNING) {
        if (sm->scan_cnt < WPS_IGNORE_SEL_REG_MAX_CNT) {
            sm->ignore_sel_reg = true;
        }
        FUNC4(&sm->wps_scan_timer, 100, 0);
    } else {
        return;
    }
}