#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  match ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; int /*<<< orphan*/  app_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_KEY_IDX ; 
 int /*<<< orphan*/  APP_KEY_OCTET ; 
 int /*<<< orphan*/  ESP_BLE_MESH_KEY_PRIMARY ; 
 int ESP_BLE_MESH_PROV_ADV ; 
 int ESP_BLE_MESH_PROV_GATT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  composition ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  example_ble_mesh_config_client_cb ; 
 int /*<<< orphan*/  example_ble_mesh_generic_client_cb ; 
 int /*<<< orphan*/  example_ble_mesh_provisioning_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ prov_key ; 
 int /*<<< orphan*/  provision ; 

__attribute__((used)) static esp_err_t FUNC10(void)
{
    uint8_t match[2] = {0xdd, 0xdd};
    esp_err_t err;

    prov_key.net_idx = ESP_BLE_MESH_KEY_PRIMARY;
    prov_key.app_idx = APP_KEY_IDX;
    FUNC9(prov_key.app_key, APP_KEY_OCTET, sizeof(prov_key.app_key));

    FUNC8(example_ble_mesh_provisioning_cb);
    FUNC6(example_ble_mesh_config_client_cb);
    FUNC7(example_ble_mesh_generic_client_cb);


    err = FUNC2(&provision, &composition);
    if (err) {
        FUNC0(TAG, "Initializing mesh failed (err %d)", err);
        return err;
    }

    FUNC5(match, sizeof(match), 0x0, false);

    FUNC4(ESP_BLE_MESH_PROV_ADV | ESP_BLE_MESH_PROV_GATT);

    FUNC3(prov_key.app_key, prov_key.net_idx, prov_key.app_idx);

    FUNC1(TAG, "BLE Mesh Provisioner initialized");

    return err;
}