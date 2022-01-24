#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ tBT_UUID ;
typedef  int /*<<< orphan*/  esp_gattc_incl_svc_elem_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
typedef  int /*<<< orphan*/  btgatt_db_element_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,TYPE_1__*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  ESP_GATT_DB_INCLUDED_SERVICE ; 
 int /*<<< orphan*/  ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

esp_gatt_status_t FUNC5(uint16_t conn_id,
                                                    uint16_t start_handle,
                                                    uint16_t end_handle,
                                                    esp_bt_uuid_t *incl_uuid,
                                                    esp_gattc_incl_svc_elem_t *result,
                                                    uint16_t *count)
{
    esp_gatt_status_t status;
    btgatt_db_element_t *db = NULL;
    int incl_num = 0;
    tBT_UUID bta_uuid = {0};

    if (incl_uuid != NULL) {
        FUNC3(&bta_uuid, incl_uuid);
        FUNC0(conn_id, start_handle, end_handle, &bta_uuid, &db, &incl_num);
    } else {
        FUNC0(conn_id, start_handle, end_handle, NULL, &db, &incl_num);
    }

    if ((status = FUNC1(incl_num, 0)) != ESP_GATT_OK) {
        if (db) {
            FUNC4(db);
        }
        *count = 0;
        return status;
    }else {
        FUNC2(*count, (uint16_t)incl_num, ESP_GATT_DB_INCLUDED_SERVICE, 0, (void *)result, db);
    }

    *count = incl_num;
    //don't forget to free the db buffer after used.
    if (db) {
        FUNC4(db);
    }
    return ESP_GATT_OK;
}