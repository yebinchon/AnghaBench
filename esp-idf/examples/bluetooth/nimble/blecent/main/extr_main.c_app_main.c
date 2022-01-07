
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int store_status_cb; int sync_cb; int reset_cb; } ;


 int BLE_MAX_CONNECTIONS ;
 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int MYNEWT_VAL (int ) ;
 int assert (int) ;
 TYPE_1__ ble_hs_cfg ;
 int ble_store_config_init () ;
 int ble_store_util_status_rr ;
 int ble_svc_gap_device_name_set (char*) ;
 int blecent_host_task ;
 int blecent_on_reset ;
 int blecent_on_sync ;
 scalar_t__ esp_nimble_hci_and_controller_init () ;
 int nimble_port_freertos_init (int ) ;
 int nimble_port_init () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int peer_init (int ,int,int,int) ;

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

    ble_hs_cfg.reset_cb = blecent_on_reset;
    ble_hs_cfg.sync_cb = blecent_on_sync;
    ble_hs_cfg.store_status_cb = ble_store_util_status_rr;


    rc = peer_init(MYNEWT_VAL(BLE_MAX_CONNECTIONS), 64, 64, 64);
    assert(rc == 0);


    rc = ble_svc_gap_device_name_set("nimble-blecent");
    assert(rc == 0);


    ble_store_config_init();

    nimble_port_freertos_init(blecent_host_task);

}
