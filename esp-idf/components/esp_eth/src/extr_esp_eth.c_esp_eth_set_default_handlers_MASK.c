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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETHERNET_EVENT_CONNECTED ; 
 int /*<<< orphan*/  ETHERNET_EVENT_DISCONNECTED ; 
 int /*<<< orphan*/  ETHERNET_EVENT_START ; 
 int /*<<< orphan*/  ETHERNET_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_EVENT ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_ETH_GOT_IP ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  esp_netif_action_connected ; 
 int /*<<< orphan*/  esp_netif_action_disconnected ; 
 int /*<<< orphan*/  esp_netif_action_got_ip ; 
 int /*<<< orphan*/  esp_netif_action_start ; 
 int /*<<< orphan*/  esp_netif_action_stop ; 
 int /*<<< orphan*/  fail ; 

esp_err_t FUNC3(void* esp_netif)
{
    esp_err_t ret;
    FUNC0(esp_netif, "esp-netif handle can't be null", fail, ESP_ERR_INVALID_ARG);

    ret = FUNC2(ETH_EVENT, ETHERNET_EVENT_START, esp_netif_action_start, esp_netif);
    if (ret != ESP_OK) {
        goto fail;
    }

    ret = FUNC2(ETH_EVENT, ETHERNET_EVENT_STOP, esp_netif_action_stop, esp_netif);
    if (ret != ESP_OK) {
        goto fail;
    }

    ret = FUNC2(ETH_EVENT, ETHERNET_EVENT_CONNECTED, esp_netif_action_connected, esp_netif);
    if (ret != ESP_OK) {
        goto fail;
    }

    ret = FUNC2(ETH_EVENT, ETHERNET_EVENT_DISCONNECTED, esp_netif_action_disconnected, esp_netif);
    if (ret != ESP_OK) {
        goto fail;
    }

    ret = FUNC2(IP_EVENT, IP_EVENT_ETH_GOT_IP, esp_netif_action_got_ip, esp_netif);
    if (ret != ESP_OK) {
        goto fail;
    }

    return ESP_OK;

fail:
    FUNC1(esp_netif);
    return ret;
}