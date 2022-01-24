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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  esp_gattc_char_elem_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLUEDROID_STATUS_ENABLED ; 
 int /*<<< orphan*/  ESP_GATT_INVALID_HANDLE ; 
 int /*<<< orphan*/  ESP_GATT_INVALID_PDU ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

esp_gatt_status_t FUNC3(esp_gatt_if_t gattc_if, 
                                                 uint16_t conn_id,
                                                 uint16_t start_handle,
                                                 uint16_t end_handle,
                                                 esp_bt_uuid_t char_uuid,
                                                 esp_gattc_char_elem_t *result,
                                                 uint16_t *count)
{
    FUNC1(ESP_BLUEDROID_STATUS_ENABLED);

    if (start_handle == 0 && end_handle == 0) {
        *count = 0;
        return ESP_GATT_INVALID_HANDLE;
    }

    if (result == NULL || count == NULL || *count == 0) {
        return ESP_GATT_INVALID_PDU;
    }

    uint16_t conn_hdl = FUNC0(gattc_if,conn_id);
    return FUNC2(conn_hdl, start_handle, end_handle, char_uuid, result, count);
}