#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  eth_driver ;
typedef  TYPE_1__* esp_eth_handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  check_link_timer; } ;
typedef  TYPE_1__ esp_eth_driver_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETHERNET_EVENT_START ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_EVENT ; 
 int /*<<< orphan*/  err_event ; 
 int /*<<< orphan*/  err_start_timer ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(esp_eth_handle_t eth_handle)
{
    esp_err_t ret = ESP_OK;
    esp_eth_driver_t *eth_driver = eth_handle;
    FUNC0(FUNC4(eth_driver->check_link_timer, 0) == pdPASS, "start eth_link_timer failed", err_start_timer, ESP_FAIL);

    FUNC0(FUNC2(ETH_EVENT, ETHERNET_EVENT_START, &eth_driver, sizeof(eth_driver), 0) == ESP_OK,
              "send ETHERNET_EVENT_START event failed", err_event, ESP_FAIL);
    return ret;
err_start_timer:
    FUNC3(eth_driver->check_link_timer, 0);
err_event:
    FUNC1(eth_driver);
    return ret;
}