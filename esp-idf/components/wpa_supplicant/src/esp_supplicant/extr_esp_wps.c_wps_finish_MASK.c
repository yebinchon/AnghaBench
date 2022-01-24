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
typedef  int /*<<< orphan*/  wifi_sta_config_t ;
struct TYPE_8__ {scalar_t__ bssid_set; int /*<<< orphan*/  bssid; int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;
struct TYPE_9__ {TYPE_2__ sta; } ;
typedef  TYPE_3__ wifi_config_t ;
struct wps_sm {int /*<<< orphan*/  wps_success_cb_timer; int /*<<< orphan*/  bssid; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  wps_msg_timeout_timer; int /*<<< orphan*/  wps_timeout_timer; TYPE_1__* wps; } ;
struct TYPE_7__ {scalar_t__ state; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_WPS_ER_FAILED ; 
 int /*<<< orphan*/  WPS_FAIL_REASON_NORMAL ; 
 scalar_t__ WPS_FINISHED ; 
 int /*<<< orphan*/  WPS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(void)
{
    struct wps_sm *sm = gWpsSm;
    int ret = ESP_FAIL;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (sm->wps->state == WPS_FINISHED) {
        wifi_config_t *config = (wifi_config_t *)FUNC8(sizeof(wifi_config_t));

        if (config == NULL) {
            FUNC0(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, 0, 0, portMAX_DELAY);
            return ESP_FAIL;
        }

        FUNC9(MSG_DEBUG, "wps finished------>");
        FUNC10(WPS_STATUS_SUCCESS);
        FUNC1();
        FUNC4(&sm->wps_timeout_timer);
        FUNC4(&sm->wps_msg_timeout_timer);

        FUNC6(config, 0x00, sizeof(wifi_sta_config_t));
        FUNC5(config->sta.ssid, sm->ssid, sm->ssid_len);
        FUNC5(config->sta.password, sm->key, sm->key_len);
        FUNC5(config->sta.bssid, sm->bssid, ETH_ALEN);
        config->sta.bssid_set = 0;
        FUNC2(0, config);
        FUNC7(config);
        config = NULL;

        FUNC4(&sm->wps_success_cb_timer);
        FUNC3(&sm->wps_success_cb_timer, 1000, 0);

        ret = 0;
    } else {
        FUNC9(MSG_ERROR, "wps failed----->");

        ret = FUNC11(WPS_FAIL_REASON_NORMAL);
    }

    return ret;
}