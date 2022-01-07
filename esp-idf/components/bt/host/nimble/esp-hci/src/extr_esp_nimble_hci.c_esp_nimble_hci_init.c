
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int ble_hci_transport_init () ;
 int esp_vhci_host_register_callback (int *) ;
 int vhci_host_cb ;

esp_err_t esp_nimble_hci_init(void)
{
    esp_err_t ret;
    if ((ret = esp_vhci_host_register_callback(&vhci_host_cb)) != ESP_OK) {
        return ret;
    }

    ble_hci_transport_init();

    return ESP_OK;
}
