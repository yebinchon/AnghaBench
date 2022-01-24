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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;
typedef  int /*<<< orphan*/  esp_eth_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
#define  ETHERNET_EVENT_CONNECTED 131 
#define  ETHERNET_EVENT_DISCONNECTED 130 
#define  ETHERNET_EVENT_START 129 
#define  ETHERNET_EVENT_STOP 128 
 int /*<<< orphan*/  ETH_CMD_G_MAC_ADDR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    uint8_t mac_addr[6] = {0};
    /* we can get the ethernet driver handle from event data */
    esp_eth_handle_t eth_handle = *(esp_eth_handle_t *)event_data;

    switch (event_id) {
    case ETHERNET_EVENT_CONNECTED:
        FUNC1(eth_handle, ETH_CMD_G_MAC_ADDR, mac_addr);
        FUNC0(TAG, "Ethernet Link Up");
        FUNC0(TAG, "Ethernet HW Addr %02x:%02x:%02x:%02x:%02x:%02x",
                 mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
        break;
    case ETHERNET_EVENT_DISCONNECTED:
        FUNC0(TAG, "Ethernet Link Down");
        break;
    case ETHERNET_EVENT_START:
        FUNC0(TAG, "Ethernet Started");
        break;
    case ETHERNET_EVENT_STOP:
        FUNC0(TAG, "Ethernet Stopped");
        break;
    default:
        break;
    }
}