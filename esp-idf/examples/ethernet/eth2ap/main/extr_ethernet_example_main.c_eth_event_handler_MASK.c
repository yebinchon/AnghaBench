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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
#define  ETHERNET_EVENT_CONNECTED 131 
#define  ETHERNET_EVENT_DISCONNECTED 130 
#define  ETHERNET_EVENT_START 129 
#define  ETHERNET_EVENT_STOP 128 
 int /*<<< orphan*/  ETH_CMD_G_MAC_ADDR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_IF_AP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  s_eth_handle ; 
 int /*<<< orphan*/  s_eth_mac ; 
 int s_ethernet_is_connected ; 

__attribute__((used)) static void FUNC6(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    switch (event_id) {
    case ETHERNET_EVENT_CONNECTED:
        FUNC1(TAG, "Ethernet Link Up");
        s_ethernet_is_connected = true;
        FUNC2(s_eth_handle, ETH_CMD_G_MAC_ADDR, s_eth_mac);
        FUNC3(WIFI_IF_AP, s_eth_mac);
        FUNC0(FUNC4());
        break;
    case ETHERNET_EVENT_DISCONNECTED:
        FUNC1(TAG, "Ethernet Link Down");
        s_ethernet_is_connected = false;
        FUNC0(FUNC5());
        break;
    case ETHERNET_EVENT_START:
        FUNC1(TAG, "Ethernet Started");
        break;
    case ETHERNET_EVENT_STOP:
        FUNC1(TAG, "Ethernet Stopped");
        break;
    default:
        break;
    }
}