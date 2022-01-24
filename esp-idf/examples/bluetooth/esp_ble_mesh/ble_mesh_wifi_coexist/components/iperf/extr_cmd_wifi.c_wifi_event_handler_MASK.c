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
 int /*<<< orphan*/  CONNECTED_BIT ; 
 int /*<<< orphan*/  DISCONNECTED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
#define  WIFI_EVENT_SCAN_DONE 130 
#define  WIFI_EVENT_STA_CONNECTED 129 
#define  WIFI_EVENT_STA_DISCONNECTED 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  reconnect ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    switch (event_id) {
    case WIFI_EVENT_SCAN_DONE:
        FUNC2();
        FUNC0(TAG, "sta scan done");
        break;
    case WIFI_EVENT_STA_CONNECTED:
        FUNC0(TAG, "L2 connected");
        break;
    case WIFI_EVENT_STA_DISCONNECTED:
        if (reconnect) {
            FUNC0(TAG, "sta disconnect, reconnect...");
            FUNC1();
        } else {
            FUNC0(TAG, "sta disconnect");
        }
        FUNC3(wifi_event_group, CONNECTED_BIT);
        FUNC4(wifi_event_group, DISCONNECTED_BIT);
        break;
    default:
        break;
    }
    return;
}