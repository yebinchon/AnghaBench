#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  shutdown_handler_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_AP_START ; 
 int /*<<< orphan*/  WIFI_EVENT_AP_STOP ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_CONNECTED ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_DISCONNECTED ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_START ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ esp_wifi_stop ; 
 int /*<<< orphan*/  wifi_default_action_ap_start ; 
 int /*<<< orphan*/  wifi_default_action_ap_stop ; 
 int /*<<< orphan*/  wifi_default_action_sta_connected ; 
 int /*<<< orphan*/  wifi_default_action_sta_disconnected ; 
 int /*<<< orphan*/  wifi_default_action_sta_got_ip ; 
 int /*<<< orphan*/  wifi_default_action_sta_start ; 
 int /*<<< orphan*/  wifi_default_action_sta_stop ; 
 int wifi_default_handlers_set ; 

esp_err_t FUNC2(void)
{
    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_START, wifi_default_action_sta_start);
    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_STOP, wifi_default_action_sta_stop);
    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_CONNECTED, wifi_default_action_sta_connected);
    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, wifi_default_action_sta_disconnected);
    FUNC0(WIFI_EVENT, WIFI_EVENT_AP_START, wifi_default_action_ap_start);
    FUNC0(WIFI_EVENT, WIFI_EVENT_AP_STOP, wifi_default_action_ap_stop);
    FUNC0(IP_EVENT, IP_EVENT_STA_GOT_IP, wifi_default_action_sta_got_ip);
    FUNC1((shutdown_handler_t)esp_wifi_stop);
    wifi_default_handlers_set = false;
    return ESP_OK;
}