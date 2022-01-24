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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_IF_WIFI_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
#define  WIFI_EVENT_AP_STACONNECTED 129 
#define  WIFI_EVENT_AP_STADISCONNECTED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pkt_wifi2eth ; 
 int s_sta_is_connected ; 

__attribute__((used)) static void FUNC2(void *arg, esp_event_base_t event_base,
                               int32_t event_id, void *event_data)
{
    switch (event_id) {
    case WIFI_EVENT_AP_STACONNECTED:
        FUNC0(TAG, "Wi-Fi AP got a station connected");
        s_sta_is_connected = true;
        FUNC1(ESP_IF_WIFI_AP, pkt_wifi2eth);
        break;
    case WIFI_EVENT_AP_STADISCONNECTED:
        FUNC0(TAG, "Wi-Fi AP got a station disconnected");
        s_sta_is_connected = false;
        FUNC1(ESP_IF_WIFI_AP, NULL);
        break;
    default:
        break;
    }
}