
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bd_addr; } ;
typedef TYPE_1__ esp_ble_bond_dev_t ;
typedef int esp_bd_addr_t ;


 int ESP_LOGI (int ,char*,int) ;
 int GATTS_TABLE_TAG ;
 int esp_ble_get_bond_device_list (int*,TYPE_1__*) ;
 int esp_ble_get_bond_device_num () ;
 int esp_log_buffer_hex (int ,void*,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void show_bonded_devices(void)
{
    int dev_num = esp_ble_get_bond_device_num();

    esp_ble_bond_dev_t *dev_list = (esp_ble_bond_dev_t *)malloc(sizeof(esp_ble_bond_dev_t) * dev_num);
    esp_ble_get_bond_device_list(&dev_num, dev_list);
    ESP_LOGI(GATTS_TABLE_TAG, "Bonded devices number : %d\n", dev_num);

    ESP_LOGI(GATTS_TABLE_TAG, "Bonded devices list : %d\n", dev_num);
    for (int i = 0; i < dev_num; i++) {
        esp_log_buffer_hex(GATTS_TABLE_TAG, (void *)dev_list[i].bd_addr, sizeof(esp_bd_addr_t));
    }

    free(dev_list);
}
