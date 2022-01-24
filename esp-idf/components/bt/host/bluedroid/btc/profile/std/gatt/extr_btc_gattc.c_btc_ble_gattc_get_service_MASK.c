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
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  int /*<<< orphan*/  esp_gattc_service_elem_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
typedef  int /*<<< orphan*/  btgatt_db_element_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  ESP_GATT_DB_PRIMARY_SERVICE ; 
 int /*<<< orphan*/  ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 

esp_gatt_status_t FUNC6(uint16_t conn_id, esp_bt_uuid_t *svc_uuid,
                                                           esp_gattc_service_elem_t *result,
                                                           uint16_t *count, uint16_t offset)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = NULL;
    int svc_num = 0;
    tBT_UUID *bta_uuid = NULL;
    if (svc_uuid) {
        bta_uuid = FUNC5(sizeof(tBT_UUID));
        FUNC3(bta_uuid, svc_uuid);
    }

    FUNC0(conn_id, bta_uuid, &db, &svc_num);

    if ((status = FUNC1(svc_num, offset)) != ESP_GATT_OK) {
        if (db) {
            FUNC4(db);
        }
        if (bta_uuid) {
            FUNC4(bta_uuid);
        }
        *count = 0;
        return status;
    } else {
        FUNC2(*count, (uint16_t)svc_num, ESP_GATT_DB_PRIMARY_SERVICE, offset, (void *)result, db);
    }

    *count = svc_num;
    //don't forget to free the db buffer after used.
    if (db) {
        FUNC4(db);
    }
    if (bta_uuid) {
        FUNC4(bta_uuid);
    }
    return ESP_GATT_OK;
}