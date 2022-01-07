
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct uuid128_name_buf {TYPE_6__* uuid128_name_table; } ;
struct TYPE_17__ {int * uuids128; } ;
struct TYPE_20__ {int gatt_db; int * device_name; int adv_params; TYPE_15__ adv_data; int set_mtu_fn; int disconnect_fn; int connect_fn; } ;
typedef TYPE_3__ simple_ble_cfg_t ;
struct TYPE_21__ {int remove_endpoint; int add_endpoint; } ;
typedef TYPE_4__ protocomm_t ;
typedef int protocomm_ble_name_uuid_t ;
struct TYPE_22__ {int nu_lookup_count; TYPE_2__* nu_lookup; int device_name; int service_uuid; } ;
typedef TYPE_5__ protocomm_ble_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_18__ {int type; } ;
struct TYPE_23__ {int value; TYPE_1__ u; } ;
typedef TYPE_6__ ble_uuid128_t ;
struct TYPE_24__ {int g_nu_lookup_count; int gatt_mtu; TYPE_4__* pc_ble; TYPE_13__* g_nu_lookup; } ;
typedef TYPE_7__ _protocomm_ble_internal_t ;
struct TYPE_19__ {int name; int uuid; } ;
struct TYPE_16__ {int * name; int uuid; } ;


 int BLE_ATT_MTU_DFLT ;
 int BLE_UUID128_VAL_LENGTH ;
 int BLE_UUID_TYPE_128 ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGV (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SLIST_INSERT_HEAD (int *,struct uuid128_name_buf*,int ) ;
 int TAG ;
 TYPE_15__ adv_data ;
 int adv_params ;
 int ble_uuid_base ;
 scalar_t__ calloc (int,int) ;
 int esp_get_free_heap_size () ;
 int free_gatt_ble_misc_memory (TYPE_3__*) ;
 int link ;
 TYPE_13__* malloc (int) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ populate_gatt_db (int *,TYPE_5__ const*) ;
 TYPE_7__* protoble_internal ;
 int protocomm_ble_add_endpoint ;
 int protocomm_ble_cleanup () ;
 int * protocomm_ble_device_name ;
 int protocomm_ble_remove_endpoint ;
 scalar_t__ simple_ble_start (TYPE_3__*) ;
 void* strdup (int ) ;
 int transport_simple_ble_connect ;
 int transport_simple_ble_disconnect ;
 int transport_simple_ble_set_mtu ;
 int uuid128_name_list ;

esp_err_t protocomm_ble_start(protocomm_t *pc, const protocomm_ble_config_t *config)
{


    memcpy(ble_uuid_base, config->service_uuid, BLE_UUID128_VAL_LENGTH);

    if (!pc || !config || !config->device_name || !config->nu_lookup) {
        return ESP_ERR_INVALID_ARG;
    }

    if (protoble_internal) {
        ESP_LOGE(TAG, "Protocomm BLE already started");
        return ESP_FAIL;
    }


    ble_uuid128_t *svc_uuid128 = (ble_uuid128_t *)
                                 calloc(1, sizeof(ble_uuid128_t));
    if (svc_uuid128 == ((void*)0)) {
        ESP_LOGE(TAG, "Error while allocating memory for 128 bit UUID");
        return ESP_ERR_NO_MEM;
    }
    svc_uuid128->u.type = BLE_UUID_TYPE_128;
    memcpy(svc_uuid128->value, config->service_uuid, BLE_UUID128_VAL_LENGTH);
    adv_data.uuids128 = (void *)svc_uuid128;


    struct uuid128_name_buf *temp_uuid128_name_buf = (struct uuid128_name_buf *)
            calloc(1, sizeof(struct uuid128_name_buf));

    if (temp_uuid128_name_buf == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for UUID128 address database");
        return ESP_ERR_NO_MEM;
    }
    SLIST_INSERT_HEAD(&uuid128_name_list, temp_uuid128_name_buf, link);
    temp_uuid128_name_buf->uuid128_name_table = svc_uuid128;

    if (adv_data.uuids128 == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for storing service UUID");
        protocomm_ble_cleanup();
        return ESP_ERR_NO_MEM;
    }


    protocomm_ble_device_name = strdup(config->device_name);

    if (protocomm_ble_device_name == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for storing BLE device name");
        protocomm_ble_cleanup();
        return ESP_ERR_NO_MEM;
    }

    protoble_internal = (_protocomm_ble_internal_t *) calloc(1, sizeof(_protocomm_ble_internal_t));
    if (protoble_internal == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating internal protocomm structure");
        protocomm_ble_cleanup();
        return ESP_ERR_NO_MEM;
    }

    protoble_internal->g_nu_lookup_count = config->nu_lookup_count;
    protoble_internal->g_nu_lookup = malloc(config->nu_lookup_count * sizeof(protocomm_ble_name_uuid_t));
    if (protoble_internal->g_nu_lookup == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating internal name UUID table");
        protocomm_ble_cleanup();
        return ESP_ERR_NO_MEM;
    }

    for (unsigned i = 0; i < protoble_internal->g_nu_lookup_count; i++) {
        protoble_internal->g_nu_lookup[i].uuid = config->nu_lookup[i].uuid;
        protoble_internal->g_nu_lookup[i].name = strdup(config->nu_lookup[i].name);
        if (protoble_internal->g_nu_lookup[i].name == ((void*)0)) {
            ESP_LOGE(TAG, "Error allocating internal name UUID entry");
            protocomm_ble_cleanup();
            return ESP_ERR_NO_MEM;
        }
    }

    pc->add_endpoint = protocomm_ble_add_endpoint;
    pc->remove_endpoint = protocomm_ble_remove_endpoint;
    protoble_internal->pc_ble = pc;
    protoble_internal->gatt_mtu = BLE_ATT_MTU_DFLT;

    simple_ble_cfg_t *ble_config = (simple_ble_cfg_t *) calloc(1, sizeof(simple_ble_cfg_t));
    if (ble_config == ((void*)0)) {
        ESP_LOGE(TAG, "Ran out of memory for BLE config");
        protocomm_ble_cleanup();
        return ESP_ERR_NO_MEM;
    }


    ble_config->connect_fn = transport_simple_ble_connect;
    ble_config->disconnect_fn = transport_simple_ble_disconnect;
    ble_config->set_mtu_fn = transport_simple_ble_set_mtu;


    ble_config->adv_data = adv_data;
    ble_config->adv_params = adv_params;

    ble_config->device_name = protocomm_ble_device_name;

    if (populate_gatt_db(&ble_config->gatt_db, config) != 0) {
        ESP_LOGE(TAG, "Error populating GATT Database");
        free_gatt_ble_misc_memory(ble_config);
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = simple_ble_start(ble_config);
    ESP_LOGD(TAG, "Free Heap size after simple_ble_start= %d", esp_get_free_heap_size());

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "simple_ble_start failed w/ error code 0x%x", err);
        free_gatt_ble_misc_memory(ble_config);
        protocomm_ble_cleanup();
        return err;
    }

    ESP_LOGV(TAG, "Waiting for client to connect ......");
    return ESP_OK;
}
