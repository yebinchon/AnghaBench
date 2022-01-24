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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_ble_mesh_generic_client_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PID_GENERIC_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLE_HOST_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC2(esp_ble_mesh_generic_client_cb_t callback)
{
    FUNC0(ESP_BLE_HOST_STATUS_ENABLED);

    return (FUNC1(BTC_PID_GENERIC_CLIENT, callback) == 0 ? ESP_OK : ESP_FAIL);
}