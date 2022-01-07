
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int device_name; } ;
typedef TYPE_1__ simple_ble_cfg_t ;
struct TYPE_8__ {int gatts_register_cb; int sync_cb; int reset_cb; } ;
struct TYPE_7__ {int name_is_complete; int name_len; int * name; } ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 void* ble_cfg_p ;
 TYPE_5__ ble_hs_cfg ;
 int ble_store_config_init () ;
 scalar_t__ ble_svc_gap_device_name () ;
 int ble_svc_gap_device_name_set (int ) ;
 int esp_get_free_heap_size () ;
 int esp_nimble_hci_and_controller_init () ;
 int gatt_svr_init (TYPE_1__ const*) ;
 int gatt_svr_register_cb ;
 int nimble_host_task ;
 int nimble_port_freertos_init (int ) ;
 int nimble_port_init () ;
 TYPE_3__ resp_data ;
 int simple_ble_on_reset ;
 int simple_ble_on_sync ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int simple_ble_start(const simple_ble_cfg_t *cfg)
{
    ble_cfg_p = (void *)cfg;
    int rc;
    ESP_LOGD(TAG, "Free mem at start of simple_ble_init %d", esp_get_free_heap_size());

    ESP_ERROR_CHECK(esp_nimble_hci_and_controller_init());
    nimble_port_init();


    ble_hs_cfg.reset_cb = simple_ble_on_reset;
    ble_hs_cfg.sync_cb = simple_ble_on_sync;
    ble_hs_cfg.gatts_register_cb = gatt_svr_register_cb;

    rc = gatt_svr_init(cfg);
    if (rc != 0) {
        ESP_LOGE(TAG, "Error initializing GATT server");
        return rc;
    }


    rc = ble_svc_gap_device_name_set(cfg->device_name);
    if (rc != 0) {
        ESP_LOGE(TAG, "Error setting device name");
        return rc;
    }

    resp_data.name = (void *) ble_svc_gap_device_name();
    if (resp_data.name != ((void*)0)) {
        resp_data.name_len = strlen(ble_svc_gap_device_name());
        resp_data.name_is_complete = 1;
    }


    ble_store_config_init();
    nimble_port_freertos_init(nimble_host_task);

    return 0;
}
