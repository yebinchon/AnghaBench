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
struct netif {char* hostname; int /*<<< orphan*/  l2_buffer_free_notify; int /*<<< orphan*/  linkoutput; int /*<<< orphan*/  output_ip6; int /*<<< orphan*/  output; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ eth_speed_t ;
typedef  int /*<<< orphan*/  esp_eth_handle_t ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 char* CONFIG_LWIP_LOCAL_HOSTNAME ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ETH_CMD_G_SPEED ; 
 scalar_t__ ETH_SPEED_100M ; 
 int /*<<< orphan*/  IFNAME0 ; 
 int /*<<< orphan*/  IFNAME1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netif*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct netif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etharp_output ; 
 int /*<<< orphan*/  ethernet_free_rx_buf_l2 ; 
 int /*<<< orphan*/  FUNC5 (struct netif*) ; 
 int /*<<< orphan*/  ethernet_low_level_output ; 
 int /*<<< orphan*/  ethip6_output ; 
 int /*<<< orphan*/  snmp_ifType_ethernet_csmacd ; 

err_t FUNC6(struct netif *netif)
{
    FUNC0("netif != NULL", (netif != NULL));
    /* Have to get the esp-netif handle from netif first and then driver==ethernet handle from there */
    esp_eth_handle_t eth_handle = FUNC4(FUNC3(netif));
    /* Initialize interface hostname */
#if LWIP_NETIF_HOSTNAME
#if ESP_LWIP
    netif->hostname = CONFIG_LWIP_LOCAL_HOSTNAME;
#else
    netif->hostname = "lwip";
#endif

#endif /* LWIP_NETIF_HOSTNAME */

    /* Initialize the snmp variables and counters inside the struct netif. */
    eth_speed_t speed;

    FUNC2(eth_handle, ETH_CMD_G_SPEED, &speed);
    if (speed == ETH_SPEED_100M) {
        FUNC1(netif, snmp_ifType_ethernet_csmacd, 100000000);
    } else {
        FUNC1(netif, snmp_ifType_ethernet_csmacd, 10000000);
    }

    netif->name[0] = IFNAME0;
    netif->name[1] = IFNAME1;
    netif->output = etharp_output;
#if LWIP_IPV6
    netif->output_ip6 = ethip6_output;
#endif /* LWIP_IPV6 */
    netif->linkoutput = ethernet_low_level_output;
    netif->l2_buffer_free_notify = ethernet_free_rx_buf_l2;

    FUNC5(netif);

    return ERR_OK;
}