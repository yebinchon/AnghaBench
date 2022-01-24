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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ibeacon_adv_data ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  esp_bt_controller_config_t ;
typedef  int /*<<< orphan*/  esp_ble_ibeacon_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEMO_TAG ; 
 int /*<<< orphan*/  ESP_BT_MODE_BLE ; 
 int /*<<< orphan*/  ESP_BT_MODE_CLASSIC_BT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ble_scan_params ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  vendor_config ; 

void FUNC12(void)
{
    FUNC1(FUNC11());
    FUNC1(FUNC9(ESP_BT_MODE_CLASSIC_BT));
    esp_bt_controller_config_t bt_cfg = FUNC0();
    FUNC8(&bt_cfg);
    FUNC7(ESP_BT_MODE_BLE);

    FUNC3();

    /* set scan parameters */
#if (IBEACON_MODE == IBEACON_RECEIVER)
    FUNC6(&ble_scan_params);

#elif (IBEACON_MODE == IBEACON_SENDER)
    esp_ble_ibeacon_t ibeacon_adv_data;
    esp_err_t status = esp_ble_config_ibeacon_data (&vendor_config, &ibeacon_adv_data);
    if (status == ESP_OK){
        esp_ble_gap_config_adv_data_raw((uint8_t*)&ibeacon_adv_data, sizeof(ibeacon_adv_data));
    }
    else {
        ESP_LOGE(DEMO_TAG, "Config iBeacon data failed: %s\n", esp_err_to_name(status));
    }
#endif
}