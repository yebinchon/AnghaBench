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

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ble_hci_acl_pool ; 
 int /*<<< orphan*/  ble_hci_cmd_pool ; 
 int /*<<< orphan*/  ble_hci_evt_hi_pool ; 
 int /*<<< orphan*/  ble_hci_evt_lo_pool ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC2(void)
{
    int ret = 0;

    ret += FUNC0(&ble_hci_evt_lo_pool);

    ret += FUNC0(&ble_hci_evt_hi_pool);

    ret += FUNC0(&ble_hci_cmd_pool);

    ret += FUNC1(&ble_hci_acl_pool);

    if (ret) {
        return ESP_FAIL;
    } else {
        return ESP_OK;
    }
}