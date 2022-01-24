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
 int ESP_BLE_MESH_PROV_ADV ; 
 int ESP_BLE_MESH_PROV_GATT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LED_G ; 
 int /*<<< orphan*/  LED_ON ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  composition ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  example_ble_mesh_config_server_cb ; 
 int /*<<< orphan*/  example_ble_mesh_generic_client_cb ; 
 int /*<<< orphan*/  example_ble_mesh_provisioning_cb ; 
 int /*<<< orphan*/  provision ; 

__attribute__((used)) static esp_err_t FUNC8(void)
{
    esp_err_t err = 0;

    FUNC7(example_ble_mesh_provisioning_cb);
    FUNC6(example_ble_mesh_generic_client_cb);
    FUNC5(example_ble_mesh_config_server_cb);

    err = FUNC3(&provision, &composition);
    if (err) {
        FUNC0(TAG, "Initializing mesh failed (err %d)", err);
        return err;
    }

    FUNC4(ESP_BLE_MESH_PROV_ADV | ESP_BLE_MESH_PROV_GATT);

    FUNC1(TAG, "BLE Mesh Node initialized");

    FUNC2(LED_G, LED_ON);

    return err;
}