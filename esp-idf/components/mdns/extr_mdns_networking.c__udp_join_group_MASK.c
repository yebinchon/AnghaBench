#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct netif {int dummy; } ;
struct ip4_addr {int dummy; } ;
typedef  scalar_t__ mdns_ip_protocol_t ;
typedef  int /*<<< orphan*/  mdns_if_t ;
struct TYPE_5__ {int /*<<< orphan*/  ip6; int /*<<< orphan*/  ip4; } ;
struct TYPE_6__ {TYPE_1__ u_addr; } ;
typedef  TYPE_2__ ip_addr_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MDNS_IP_PROTOCOL_V4 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netif*) ; 
 struct netif* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct netif*,struct ip4_addr const*) ; 
 scalar_t__ FUNC7 (struct netif*,struct ip4_addr const*) ; 
 scalar_t__ FUNC8 (struct netif*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct netif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC10(mdns_if_t if_inx, mdns_ip_protocol_t ip_protocol, bool join)
{
    struct netif * netif = NULL;
    esp_netif_t *tcpip_if = FUNC2(if_inx);

    if (!FUNC5(tcpip_if)) {
        // Network interface went down before event propagated, skipping IGMP config
        return ESP_ERR_INVALID_STATE;
    }

    netif = FUNC4(tcpip_if);
    FUNC3(netif);

    if (ip_protocol == MDNS_IP_PROTOCOL_V4) {
        ip_addr_t multicast_addr;
        FUNC1(&multicast_addr, 224, 0, 0, 251);

        if(join){
            if (FUNC6(netif, (const struct ip4_addr *)&multicast_addr.u_addr.ip4)) {
                return ESP_ERR_INVALID_STATE;
            }
        } else {
            if (FUNC7(netif, (const struct ip4_addr *)&multicast_addr.u_addr.ip4)) {
                return ESP_ERR_INVALID_STATE;
            }
        }
    } else {
        ip_addr_t multicast_addr = FUNC0(0x000002ff, 0, 0, 0xfb000000);

        if(join){
            if (FUNC8(netif, &(multicast_addr.u_addr.ip6))) {
                return ESP_ERR_INVALID_STATE;
            }
        } else {
            if (FUNC9(netif, &(multicast_addr.u_addr.ip6))) {
                return ESP_ERR_INVALID_STATE;
            }
        }
    }
    return ESP_OK;
}