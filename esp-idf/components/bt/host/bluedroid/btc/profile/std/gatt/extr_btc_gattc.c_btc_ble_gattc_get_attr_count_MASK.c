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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  scalar_t__ esp_gatt_db_attr_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ ESP_GATT_DB_ALL ; 
 int /*<<< orphan*/  ESP_GATT_OK ; 

esp_gatt_status_t FUNC2(uint16_t conn_id,
                                               esp_gatt_db_attr_type_t type,
                                               uint16_t start_handle,
                                               uint16_t end_handle,
                                               uint16_t char_handle,
                                               uint16_t *count)
{
    if (type == ESP_GATT_DB_ALL) {
        FUNC0(conn_id, start_handle, end_handle, (int *)count);
    } else {
        FUNC1(conn_id, type, start_handle, end_handle, char_handle, (int *)count);
    }

    return ESP_GATT_OK;
}