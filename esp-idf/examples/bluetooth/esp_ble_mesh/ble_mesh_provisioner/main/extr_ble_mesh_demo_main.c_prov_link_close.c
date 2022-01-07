
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ esp_ble_mesh_prov_bearer_t ;


 scalar_t__ ESP_BLE_MESH_PROV_ADV ;
 int ESP_LOGI (int ,char*,char*,int ) ;
 int TAG ;

__attribute__((used)) static void prov_link_close(esp_ble_mesh_prov_bearer_t bearer, uint8_t reason)
{
    ESP_LOGI(TAG, "%s link close, reason 0x%02x",
             bearer == ESP_BLE_MESH_PROV_ADV ? "PB-ADV" : "PB-GATT", reason);
}
