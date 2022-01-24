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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* receive ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ esp_eth_mac_t ;
typedef  scalar_t__ esp_eth_handle_t ;
struct TYPE_6__ {TYPE_1__* mac; } ;
typedef  TYPE_2__ esp_eth_driver_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

esp_err_t FUNC2(esp_eth_handle_t hdl, uint8_t *buf, uint32_t *length)
{
    esp_err_t ret = ESP_OK;
    esp_eth_driver_t *eth_driver = (esp_eth_driver_t *)hdl;
    FUNC0(eth_driver, "ethernet driver handle can't be null", err, ESP_ERR_INVALID_ARG);
    esp_eth_mac_t *mac = eth_driver->mac;
    return mac->receive(mac, buf, length);
err:
    return ret;
}