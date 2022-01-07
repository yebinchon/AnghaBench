
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ esp_ble_mesh_prov_bearer_t ;
struct TYPE_2__ {int max_node_num; } ;


 scalar_t__ ESP_BLE_MESH_PROV_ADV ;
 int ESP_LOGI (int ,char*,char*,int) ;
 int TAG ;
 TYPE_1__ prov_info ;

__attribute__((used)) static void provisioner_prov_link_close(esp_ble_mesh_prov_bearer_t bearer, uint8_t reason)
{
    ESP_LOGI(TAG, "%s link close, reason 0x%02x",
             bearer == ESP_BLE_MESH_PROV_ADV ? "PB-ADV" : "PB-GATT", reason);

    if (bearer == ESP_BLE_MESH_PROV_ADV && reason != 0x00) {
        prov_info.max_node_num++;
    }
}
