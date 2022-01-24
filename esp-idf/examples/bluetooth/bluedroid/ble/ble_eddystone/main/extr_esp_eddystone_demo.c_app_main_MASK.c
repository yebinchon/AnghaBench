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
typedef  int /*<<< orphan*/  esp_bt_controller_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ESP_BT_MODE_BLE ; 
 int /*<<< orphan*/  ESP_BT_MODE_CLASSIC_BT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ble_scan_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
    FUNC1(FUNC7());
    FUNC1(FUNC5(ESP_BT_MODE_CLASSIC_BT));
    esp_bt_controller_config_t bt_cfg = FUNC0();
    FUNC4(&bt_cfg);
    FUNC3(ESP_BT_MODE_BLE);
 
    FUNC6();

    /*<! set scan parameters */
    FUNC2(&ble_scan_params);
}