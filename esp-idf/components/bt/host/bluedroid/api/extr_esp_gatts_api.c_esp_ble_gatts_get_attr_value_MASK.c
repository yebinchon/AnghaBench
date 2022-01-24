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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BLUEDROID_STATUS_ENABLED ; 
 scalar_t__ ESP_GATT_ILLEGAL_HANDLE ; 
 int /*<<< orphan*/  ESP_GATT_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,int /*<<< orphan*/ **) ; 

esp_gatt_status_t FUNC2(uint16_t attr_handle, uint16_t *length, const uint8_t **value)
{
    FUNC0(ESP_BLUEDROID_STATUS_ENABLED);

    if (attr_handle == ESP_GATT_ILLEGAL_HANDLE) {
        *length = 0;
        return ESP_GATT_INVALID_HANDLE;
    }

    return FUNC1(attr_handle, length, (uint8_t **)value);
}