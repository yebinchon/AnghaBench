
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int ble_hci_acl_pool ;
 int ble_hci_cmd_pool ;
 int ble_hci_evt_hi_pool ;
 int ble_hci_evt_lo_pool ;
 scalar_t__ os_mempool_clear (int *) ;
 scalar_t__ os_mempool_ext_clear (int *) ;

__attribute__((used)) static esp_err_t ble_hci_transport_deinit(void)
{
    int ret = 0;

    ret += os_mempool_clear(&ble_hci_evt_lo_pool);

    ret += os_mempool_clear(&ble_hci_evt_hi_pool);

    ret += os_mempool_clear(&ble_hci_cmd_pool);

    ret += os_mempool_ext_clear(&ble_hci_acl_pool);

    if (ret) {
        return ESP_FAIL;
    } else {
        return ESP_OK;
    }
}
