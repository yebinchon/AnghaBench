
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_ble_mesh_prov_bearer_t ;


 scalar_t__ ESP_BLE_MESH_PROV_ADV ;
 int ESP_LOGI (int ,char*,char*) ;
 int TAG ;

__attribute__((used)) static void provisioner_prov_link_open(esp_ble_mesh_prov_bearer_t bearer)
{
    ESP_LOGI(TAG, "%s link open", bearer == ESP_BLE_MESH_PROV_ADV ? "PB-ADV" : "PB-GATT");
}
