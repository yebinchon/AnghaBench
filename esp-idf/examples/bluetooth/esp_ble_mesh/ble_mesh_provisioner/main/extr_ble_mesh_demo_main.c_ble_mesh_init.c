
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int match ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int app_idx; int net_idx; int app_key; } ;


 int APP_KEY_IDX ;
 int APP_KEY_OCTET ;
 int ESP_BLE_MESH_KEY_PRIMARY ;
 int ESP_BLE_MESH_PROV_ADV ;
 int ESP_BLE_MESH_PROV_GATT ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int composition ;
 scalar_t__ esp_ble_mesh_init (int *,int *) ;
 int esp_ble_mesh_provisioner_add_local_app_key (int ,int ,int ) ;
 int esp_ble_mesh_provisioner_prov_enable (int) ;
 int esp_ble_mesh_provisioner_set_dev_uuid_match (int*,int,int,int) ;
 int esp_ble_mesh_register_config_client_callback (int ) ;
 int esp_ble_mesh_register_generic_client_callback (int ) ;
 int esp_ble_mesh_register_prov_callback (int ) ;
 int example_ble_mesh_config_client_cb ;
 int example_ble_mesh_generic_client_cb ;
 int example_ble_mesh_provisioning_cb ;
 int memset (int ,int ,int) ;
 TYPE_1__ prov_key ;
 int provision ;

__attribute__((used)) static esp_err_t ble_mesh_init(void)
{
    uint8_t match[2] = {0xdd, 0xdd};
    esp_err_t err;

    prov_key.net_idx = ESP_BLE_MESH_KEY_PRIMARY;
    prov_key.app_idx = APP_KEY_IDX;
    memset(prov_key.app_key, APP_KEY_OCTET, sizeof(prov_key.app_key));

    esp_ble_mesh_register_prov_callback(example_ble_mesh_provisioning_cb);
    esp_ble_mesh_register_config_client_callback(example_ble_mesh_config_client_cb);
    esp_ble_mesh_register_generic_client_callback(example_ble_mesh_generic_client_cb);


    err = esp_ble_mesh_init(&provision, &composition);
    if (err) {
        ESP_LOGE(TAG, "Initializing mesh failed (err %d)", err);
        return err;
    }

    esp_ble_mesh_provisioner_set_dev_uuid_match(match, sizeof(match), 0x0, 0);

    esp_ble_mesh_provisioner_prov_enable(ESP_BLE_MESH_PROV_ADV | ESP_BLE_MESH_PROV_GATT);

    esp_ble_mesh_provisioner_add_local_app_key(prov_key.app_key, prov_key.net_idx, prov_key.app_idx);

    ESP_LOGI(TAG, "BLE Mesh Provisioner initialized");

    return err;
}
