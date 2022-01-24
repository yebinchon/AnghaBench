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
typedef  int /*<<< orphan*/  esp_bt_controller_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ESP_BT_MODE_BTDM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  tag ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{ 
    esp_err_t ret;

    /* Initialize NVS — it is used to store PHY calibration data */
    ret = FUNC7();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC1(FUNC6());
        ret = FUNC7();
    }
    FUNC1( ret );


    /* As the UART1/2 pin conflict with flash pin, so do matrix of the signal and pin */
    FUNC8();

    esp_bt_controller_config_t bt_cfg = FUNC0();
    ret = FUNC4(&bt_cfg);
    if (ret != ESP_OK) {
        FUNC2(tag, "Bluetooth Controller initialize failed: %s", FUNC5(ret));
        return;
    }

    ret = FUNC3(ESP_BT_MODE_BTDM);
    if (ret != ESP_OK) {
        FUNC2(tag, "Bluetooth Controller initialize failed: %s", FUNC5(ret));
        return;
    }
}