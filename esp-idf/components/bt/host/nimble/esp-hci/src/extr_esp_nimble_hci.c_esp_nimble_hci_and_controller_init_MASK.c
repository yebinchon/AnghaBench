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
typedef  int /*<<< orphan*/  esp_bt_controller_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ESP_BT_MODE_BLE ; 
 int /*<<< orphan*/  ESP_BT_MODE_CLASSIC_BT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

esp_err_t FUNC5(void)
{
    esp_err_t ret;

    FUNC3(ESP_BT_MODE_CLASSIC_BT);

    esp_bt_controller_config_t bt_cfg = FUNC0();

    if ((ret = FUNC2(&bt_cfg)) != ESP_OK) {
        return ret;
    }

    if ((ret = FUNC1(ESP_BT_MODE_BLE)) != ESP_OK) {
        return ret;
    }
    return FUNC4();
}