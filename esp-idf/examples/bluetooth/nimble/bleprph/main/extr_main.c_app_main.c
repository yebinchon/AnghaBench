
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int sm_bonding; int sm_mitm; int sm_sc; int sm_our_key_dist; int sm_their_key_dist; int sm_io_cap; int store_status_cb; int gatts_register_cb; int sync_cb; int reset_cb; } ;


 int CONFIG_EXAMPLE_IO_TYPE ;
 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int assert (int) ;
 TYPE_1__ ble_hs_cfg ;
 int ble_store_config_init () ;
 int ble_store_util_status_rr ;
 int ble_svc_gap_device_name_set (char*) ;
 int bleprph_host_task ;
 int bleprph_on_reset ;
 int bleprph_on_sync ;
 scalar_t__ esp_nimble_hci_and_controller_init () ;
 int gatt_svr_init () ;
 int gatt_svr_register_cb ;
 int nimble_port_freertos_init (int ) ;
 int nimble_port_init () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int scli_init () ;
 int tag ;

void
app_main(void)
{
    int rc;


    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    ESP_ERROR_CHECK(esp_nimble_hci_and_controller_init());

    nimble_port_init();

    ble_hs_cfg.reset_cb = bleprph_on_reset;
    ble_hs_cfg.sync_cb = bleprph_on_sync;
    ble_hs_cfg.gatts_register_cb = gatt_svr_register_cb;
    ble_hs_cfg.store_status_cb = ble_store_util_status_rr;

    ble_hs_cfg.sm_io_cap = CONFIG_EXAMPLE_IO_TYPE;
    ble_hs_cfg.sm_sc = 0;







    rc = gatt_svr_init();
    assert(rc == 0);


    rc = ble_svc_gap_device_name_set("nimble-bleprph");
    assert(rc == 0);


    ble_store_config_init();

    nimble_port_freertos_init(bleprph_host_task);


    rc = scli_init();
    if (rc != ESP_OK) {
        ESP_LOGE(tag, "scli_init() failed");
    }
}
