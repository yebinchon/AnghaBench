#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct uuid128_name_buf {TYPE_6__* uuid128_name_table; } ;
struct TYPE_17__ {int /*<<< orphan*/ * uuids128; } ;
struct TYPE_20__ {int /*<<< orphan*/  gatt_db; int /*<<< orphan*/ * device_name; int /*<<< orphan*/  adv_params; TYPE_15__ adv_data; int /*<<< orphan*/  set_mtu_fn; int /*<<< orphan*/  disconnect_fn; int /*<<< orphan*/  connect_fn; } ;
typedef  TYPE_3__ simple_ble_cfg_t ;
struct TYPE_21__ {int /*<<< orphan*/  remove_endpoint; int /*<<< orphan*/  add_endpoint; } ;
typedef  TYPE_4__ protocomm_t ;
typedef  int /*<<< orphan*/  protocomm_ble_name_uuid_t ;
struct TYPE_22__ {int nu_lookup_count; TYPE_2__* nu_lookup; int /*<<< orphan*/  device_name; int /*<<< orphan*/  service_uuid; } ;
typedef  TYPE_5__ protocomm_ble_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_18__ {int /*<<< orphan*/  type; } ;
struct TYPE_23__ {int /*<<< orphan*/  value; TYPE_1__ u; } ;
typedef  TYPE_6__ ble_uuid128_t ;
struct TYPE_24__ {int g_nu_lookup_count; int /*<<< orphan*/  gatt_mtu; TYPE_4__* pc_ble; TYPE_13__* g_nu_lookup; } ;
typedef  TYPE_7__ _protocomm_ble_internal_t ;
struct TYPE_19__ {int /*<<< orphan*/  name; int /*<<< orphan*/  uuid; } ;
struct TYPE_16__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ATT_MTU_DFLT ; 
 int /*<<< orphan*/  BLE_UUID128_VAL_LENGTH ; 
 int /*<<< orphan*/  BLE_UUID_TYPE_128 ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct uuid128_name_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_15__ adv_data ; 
 int /*<<< orphan*/  adv_params ; 
 int /*<<< orphan*/  ble_uuid_base ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  link ; 
 TYPE_13__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_5__ const*) ; 
 TYPE_7__* protoble_internal ; 
 int /*<<< orphan*/  protocomm_ble_add_endpoint ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * protocomm_ble_device_name ; 
 int /*<<< orphan*/  protocomm_ble_remove_endpoint ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transport_simple_ble_connect ; 
 int /*<<< orphan*/  transport_simple_ble_disconnect ; 
 int /*<<< orphan*/  transport_simple_ble_set_mtu ; 
 int /*<<< orphan*/  uuid128_name_list ; 

esp_err_t FUNC13(protocomm_t *pc, const protocomm_ble_config_t *config)
{
    /* copy the 128 bit service UUID into local buffer to use as base 128 bit
     * UUID. */
    FUNC8(ble_uuid_base, config->service_uuid, BLE_UUID128_VAL_LENGTH);

    if (!pc || !config || !config->device_name || !config->nu_lookup) {
        return ESP_ERR_INVALID_ARG;
    }

    if (protoble_internal) {
        FUNC1(TAG, "Protocomm BLE already started");
        return ESP_FAIL;
    }

    /* Store 128 bit service UUID internally. */
    ble_uuid128_t *svc_uuid128 = (ble_uuid128_t *)
                                 FUNC4(1, sizeof(ble_uuid128_t));
    if (svc_uuid128 == NULL) {
        FUNC1(TAG, "Error while allocating memory for 128 bit UUID");
        return ESP_ERR_NO_MEM;
    }
    svc_uuid128->u.type = BLE_UUID_TYPE_128;
    FUNC8(svc_uuid128->value, config->service_uuid, BLE_UUID128_VAL_LENGTH);
    adv_data.uuids128 = (void *)svc_uuid128;

    /* Store service uuid128 in SLIST, to free it afterwards */
    struct uuid128_name_buf *temp_uuid128_name_buf = (struct uuid128_name_buf *)
            FUNC4(1, sizeof(struct uuid128_name_buf));

    if (temp_uuid128_name_buf == NULL) {
        FUNC1(TAG, "Error allocating memory for UUID128 address database");
        return ESP_ERR_NO_MEM;
    }
    FUNC3(&uuid128_name_list, temp_uuid128_name_buf, link);
    temp_uuid128_name_buf->uuid128_name_table = svc_uuid128;

    if (adv_data.uuids128 == NULL) {
        FUNC1(TAG, "Error allocating memory for storing service UUID");
        FUNC10();
        return ESP_ERR_NO_MEM;
    }

    /* Store BLE device name internally */
    protocomm_ble_device_name = FUNC12(config->device_name);

    if (protocomm_ble_device_name == NULL) {
        FUNC1(TAG, "Error allocating memory for storing BLE device name");
        FUNC10();
        return ESP_ERR_NO_MEM;
    }

    protoble_internal = (_protocomm_ble_internal_t *) FUNC4(1, sizeof(_protocomm_ble_internal_t));
    if (protoble_internal == NULL) {
        FUNC1(TAG, "Error allocating internal protocomm structure");
        FUNC10();
        return ESP_ERR_NO_MEM;
    }

    protoble_internal->g_nu_lookup_count =  config->nu_lookup_count;
    protoble_internal->g_nu_lookup = FUNC7(config->nu_lookup_count * sizeof(protocomm_ble_name_uuid_t));
    if (protoble_internal->g_nu_lookup == NULL) {
        FUNC1(TAG, "Error allocating internal name UUID table");
        FUNC10();
        return ESP_ERR_NO_MEM;
    }

    for (unsigned i = 0; i < protoble_internal->g_nu_lookup_count; i++) {
        protoble_internal->g_nu_lookup[i].uuid = config->nu_lookup[i].uuid;
        protoble_internal->g_nu_lookup[i].name = FUNC12(config->nu_lookup[i].name);
        if (protoble_internal->g_nu_lookup[i].name == NULL) {
            FUNC1(TAG, "Error allocating internal name UUID entry");
            FUNC10();
            return ESP_ERR_NO_MEM;
        }
    }

    pc->add_endpoint = protocomm_ble_add_endpoint;
    pc->remove_endpoint = protocomm_ble_remove_endpoint;
    protoble_internal->pc_ble = pc;
    protoble_internal->gatt_mtu = BLE_ATT_MTU_DFLT;

    simple_ble_cfg_t *ble_config = (simple_ble_cfg_t *) FUNC4(1, sizeof(simple_ble_cfg_t));
    if (ble_config == NULL) {
        FUNC1(TAG, "Ran out of memory for BLE config");
        FUNC10();
        return ESP_ERR_NO_MEM;
    }

    /* Set function pointers required for simple BLE layer */
    ble_config->connect_fn      = transport_simple_ble_connect;
    ble_config->disconnect_fn   = transport_simple_ble_disconnect;
    ble_config->set_mtu_fn      = transport_simple_ble_set_mtu;

    /* Set parameters required for advertising */
    ble_config->adv_data        = adv_data;
    ble_config->adv_params      = adv_params;

    ble_config->device_name     = protocomm_ble_device_name;

    if (FUNC9(&ble_config->gatt_db, config) != 0) {
        FUNC1(TAG, "Error populating GATT Database");
        FUNC6(ble_config);
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = FUNC11(ble_config);
    FUNC0(TAG, "Free Heap size after simple_ble_start= %d", FUNC5());

    if (err != ESP_OK) {
        FUNC1(TAG, "simple_ble_start failed w/ error code 0x%x", err);
        FUNC6(ble_config);
        FUNC10();
        return err;
    }

    FUNC2(TAG, "Waiting for client to connect ......");
    return ESP_OK;
}