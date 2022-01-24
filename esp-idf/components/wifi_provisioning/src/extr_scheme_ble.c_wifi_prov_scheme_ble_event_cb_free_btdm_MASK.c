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
typedef  int wifi_prov_cb_event_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BT_MODE_BTDM ; 
 int /*<<< orphan*/  ESP_BT_MODE_CLASSIC_BT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
#define  WIFI_PROV_DEINIT 129 
#define  WIFI_PROV_INIT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *user_data, wifi_prov_cb_event_t event, void *event_data)
{
    esp_err_t err;
    switch (event) {
        case WIFI_PROV_INIT:
            /* Release BT memory, as we need only BLE */
            err = FUNC2(ESP_BT_MODE_CLASSIC_BT);
            if (err != ESP_OK) {
                FUNC0(TAG, "bt_mem_release of classic BT failed %d", err);
            } else {
                FUNC1(TAG, "BT memory released");
            }
            break;

        case WIFI_PROV_DEINIT:
            /* Release memory used by BLE and Bluedroid host stack */
            err = FUNC2(ESP_BT_MODE_BTDM);
            if (err != ESP_OK) {
                FUNC0(TAG, "bt_mem_release of BTDM failed %d", err);
            } else {
                FUNC1(TAG, "BTDM memory released");
            }
            break;

        default:
            break;
    }
}