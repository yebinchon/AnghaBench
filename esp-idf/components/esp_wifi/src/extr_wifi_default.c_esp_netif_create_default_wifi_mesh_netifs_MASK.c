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
typedef  int /*<<< orphan*/  netif_cfg ;
typedef  int /*<<< orphan*/  esp_netif_t ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ esp_netif_inherent_config_t ;
struct TYPE_6__ {int /*<<< orphan*/  stack; TYPE_1__* base; } ;
typedef  TYPE_2__ esp_netif_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_NETIF_BASE_DEFAULT_WIFI_AP ; 
 int /*<<< orphan*/  ESP_NETIF_BASE_DEFAULT_WIFI_STA ; 
 int /*<<< orphan*/  ESP_NETIF_DHCP_CLIENT ; 
 int /*<<< orphan*/  ESP_NETIF_DHCP_SERVER ; 
 int /*<<< orphan*/  ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP ; 
 int /*<<< orphan*/  ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC10(esp_netif_t **p_netif_sta, esp_netif_t **p_netif_ap)
{
    // Create "almost" default AP, with un-flagged DHCP server
    esp_netif_inherent_config_t netif_cfg;
    FUNC9(&netif_cfg, ESP_NETIF_BASE_DEFAULT_WIFI_AP, sizeof(netif_cfg));
    netif_cfg.flags &= ~ESP_NETIF_DHCP_SERVER;
    esp_netif_config_t cfg_ap = {
            .base = &netif_cfg,
            .stack = ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP,
    };
    esp_netif_t *netif_ap = FUNC6(&cfg_ap);
    FUNC1(netif_ap);
    FUNC0(FUNC2(netif_ap));
    FUNC0(FUNC7());

    // ...and stop DHCP server to be compatible with former tcpip_adapter (to keep the ESP_NETIF_DHCP_STOPPED state)
    FUNC0(FUNC5(netif_ap));

    // Create "almost" default station, but with un-flagged DHCP client
    FUNC9(&netif_cfg, ESP_NETIF_BASE_DEFAULT_WIFI_STA, sizeof(netif_cfg));
    netif_cfg.flags &= ~ESP_NETIF_DHCP_CLIENT;
    esp_netif_config_t cfg_sta = {
            .base = &netif_cfg,
            .stack = ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA,
    };
    esp_netif_t *netif_sta = FUNC6(&cfg_sta);
    FUNC1(netif_sta);
    FUNC0(FUNC3(netif_sta));
    FUNC0(FUNC8());

    // ...and stop DHCP client (to be started separately if the station were promoted to root)
    FUNC0(FUNC4(netif_sta));

    if (p_netif_sta) {
        *p_netif_sta = netif_sta;
    }
    if (p_netif_ap) {
        *p_netif_ap = netif_ap;
    }
    return ESP_OK;
}