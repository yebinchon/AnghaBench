
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int reset_cb; int sync_cb; } ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int assert (int) ;
 TYPE_1__ ble_hs_cfg ;
 int ble_svc_gap_device_name_set (int ) ;
 int blehr_host_task ;
 int blehr_on_reset ;
 int blehr_on_sync ;
 int blehr_tx_hrate ;
 int blehr_tx_timer ;
 int device_name ;
 scalar_t__ esp_nimble_hci_and_controller_init () ;
 int gatt_svr_init () ;
 int nimble_port_freertos_init (int ) ;
 int nimble_port_init () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int pdMS_TO_TICKS (int) ;
 int pdTRUE ;
 int xTimerCreate (char*,int ,int ,void*,int ) ;

void app_main(void)
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

    ble_hs_cfg.sync_cb = blehr_on_sync;
    ble_hs_cfg.reset_cb = blehr_on_reset;


    blehr_tx_timer = xTimerCreate("blehr_tx_timer", pdMS_TO_TICKS(1000), pdTRUE, (void *)0, blehr_tx_hrate);

    rc = gatt_svr_init();
    assert(rc == 0);


    rc = ble_svc_gap_device_name_set(device_name);
    assert(rc == 0);


    nimble_port_freertos_init(blehr_host_task);

}
