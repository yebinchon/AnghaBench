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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  esp_gattc_char_elem_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  int /*<<< orphan*/  btgatt_db_element_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  ESP_GATT_DB_CHARACTERISTIC ; 
 int /*<<< orphan*/  ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

esp_gatt_status_t FUNC4(uint16_t conn_id,
                                             uint16_t start_handle,
                                             uint16_t end_handle,
                                             esp_gattc_char_elem_t *result,
                                             uint16_t *count, uint16_t offset)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = NULL;
    int char_num = 0;
    FUNC0(conn_id, start_handle, end_handle, &db, &char_num);

    if ((status = FUNC1(char_num, offset)) != ESP_GATT_OK) {
        if (db) {
            FUNC3(db);
        }
        *count = 0;
        return status;
    } else {
        FUNC2(*count, (uint16_t)char_num, ESP_GATT_DB_CHARACTERISTIC, offset, (void *)result, db);
    }

    *count = char_num;
    //don't forget to free the db buffer after used.
    if (db) {
        FUNC3(db);
    }
    return ESP_GATT_OK;
}