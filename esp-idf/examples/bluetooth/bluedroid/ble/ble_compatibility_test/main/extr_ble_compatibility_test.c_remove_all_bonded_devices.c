
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bd_addr; } ;
typedef TYPE_1__ esp_ble_bond_dev_t ;


 int esp_ble_get_bond_device_list (int*,TYPE_1__*) ;
 int esp_ble_get_bond_device_num () ;
 int esp_ble_remove_bond_device (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void __attribute__((unused)) remove_all_bonded_devices(void)
{
    int dev_num = esp_ble_get_bond_device_num();

    esp_ble_bond_dev_t *dev_list = (esp_ble_bond_dev_t *)malloc(sizeof(esp_ble_bond_dev_t) * dev_num);
    esp_ble_get_bond_device_list(&dev_num, dev_list);
    for (int i = 0; i < dev_num; i++) {
        esp_ble_remove_bond_device(dev_list[i].bd_addr);
    }

    free(dev_list);
}
