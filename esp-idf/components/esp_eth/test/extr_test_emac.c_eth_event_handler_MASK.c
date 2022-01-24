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
typedef  int /*<<< orphan*/  EventGroupHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  ETHERNET_EVENT_CONNECTED 131 
#define  ETHERNET_EVENT_DISCONNECTED 130 
#define  ETHERNET_EVENT_START 129 
#define  ETHERNET_EVENT_STOP 128 
 int /*<<< orphan*/  ETH_CONNECT_BIT ; 
 int /*<<< orphan*/  ETH_START_BIT ; 
 int /*<<< orphan*/  ETH_STOP_BIT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    EventGroupHandle_t eth_event_group = (EventGroupHandle_t)arg;
    switch (event_id) {
    case ETHERNET_EVENT_CONNECTED:
        FUNC1(eth_event_group, ETH_CONNECT_BIT);
        FUNC0(TAG, "Ethernet Link Up");
        break;
    case ETHERNET_EVENT_DISCONNECTED:
        FUNC0(TAG, "Ethernet Link Down");
        break;
    case ETHERNET_EVENT_START:
        FUNC1(eth_event_group, ETH_START_BIT);
        FUNC0(TAG, "Ethernet Started");
        break;
    case ETHERNET_EVENT_STOP:
        FUNC1(eth_event_group, ETH_STOP_BIT);
        FUNC0(TAG, "Ethernet Stopped");
        break;
    default:
        break;
    }
}