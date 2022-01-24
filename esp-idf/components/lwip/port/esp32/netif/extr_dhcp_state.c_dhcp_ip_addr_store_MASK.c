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
typedef  int /*<<< orphan*/  uint32_t ;
struct netif {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct dhcp {TYPE_1__ offered_ip_addr; } ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_NAMESPACE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dhcp* FUNC3 (struct netif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(void *netif)
{
    nvs_handle_t nvs;
    struct netif *net = (struct netif *)netif;
    struct dhcp *dhcp = FUNC3(net);
    uint32_t ip_addr = dhcp->offered_ip_addr.addr;
    esp_netif_t *esp_netif = FUNC1(netif);

    if(FUNC0(esp_netif)) {
        if (FUNC6(DHCP_NAMESPACE, NVS_READWRITE, &nvs) == ESP_OK) {
            FUNC7(nvs,FUNC2(esp_netif), ip_addr);
            FUNC5(nvs);
            FUNC4(nvs);
        }
    }
}