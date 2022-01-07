
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ble_hci_transport_deinit () ;

esp_err_t esp_nimble_hci_deinit(void)
{
    return ble_hci_transport_deinit();
}
