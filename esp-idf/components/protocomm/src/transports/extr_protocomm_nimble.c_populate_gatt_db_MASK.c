#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ble_gatt_svc_def {scalar_t__ characteristics; int /*<<< orphan*/ * uuid; } ;
struct TYPE_7__ {int nu_lookup_count; TYPE_3__* service_uuid; } ;
typedef  TYPE_2__ protocomm_ble_config_t ;
typedef  int /*<<< orphan*/  ble_uuid_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_8__ {void* value; TYPE_1__ u; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ble_uuid128_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_GATT_UUID_CHAR_DSC ; 
 int BLE_UUID128_VAL_LENGTH ; 
 int /*<<< orphan*/  BLE_UUID_TYPE_128 ; 
 int ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (struct ble_gatt_svc_def*,int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_3__*,int) ; 

__attribute__((used)) static int
FUNC6(struct ble_gatt_svc_def **gatt_db_svcs, const protocomm_ble_config_t *config)
{
    /* Allocate memory for 2 services, 2nd to be all NULL indicating end of
     * services */
    *gatt_db_svcs = (struct ble_gatt_svc_def *) FUNC4(2, sizeof(struct ble_gatt_svc_def));
    if (*gatt_db_svcs == NULL) {
        FUNC0(TAG, "Error allocating memory for GATT services");
        return ESP_ERR_NO_MEM;
    }

    /* Allocate space for 1st service UUID as well, assume length = 128 bit */
    (*gatt_db_svcs)->uuid = (ble_uuid_t *) FUNC4(1, sizeof(ble_uuid128_t));
    if ((*gatt_db_svcs)->uuid == NULL) {
        FUNC0(TAG, "Error allocating memory for GATT service UUID");
        return ESP_ERR_NO_MEM;
    }

    /* Prepare 128 bit UUID for primary service from config service UUID. */
    ble_uuid128_t uuid128 = {0};
    uuid128.u.type = BLE_UUID_TYPE_128;
    FUNC5(uuid128.value, config->service_uuid, BLE_UUID128_VAL_LENGTH);
    FUNC5((void *) (*gatt_db_svcs)->uuid, &uuid128, sizeof(ble_uuid128_t));

    /* GATT: Add primary service. */
    int rc = FUNC3(*gatt_db_svcs, config->nu_lookup_count);
    if (rc != 0) {
        FUNC0(TAG, "Error adding primary service !!!");
        return rc;
    }

    for (int i = 0 ; i < config->nu_lookup_count; i++) {

        /* GATT: Add characteristics to the service at index no. i*/
        rc = FUNC2((void *) (*gatt_db_svcs)->characteristics, i);
        if (rc != 0) {
            FUNC0(TAG, "Error adding GATT characteristic !!!");
            return rc;
        }
        /* GATT: Add user description to characteristic no. i*/
        rc = FUNC1((void *) (*gatt_db_svcs)->characteristics,
                                   i, BLE_GATT_UUID_CHAR_DSC);
        if (rc != 0) {
            FUNC0(TAG, "Error adding GATT Discriptor !!");
            return rc;
        }
    }
    return 0;
}