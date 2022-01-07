
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_BLE_MESH_PROV_ADV ;
 int ESP_BLE_MESH_PROV_GATT ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGI (int ,char*) ;
 int LED_G ;
 int LED_ON ;
 int TAG ;
 int board_led_operation (int ,int ) ;
 int composition ;
 scalar_t__ esp_ble_mesh_init (int *,int *) ;
 int esp_ble_mesh_node_prov_enable (int) ;
 int esp_ble_mesh_register_config_server_callback (int ) ;
 int esp_ble_mesh_register_generic_client_callback (int ) ;
 int esp_ble_mesh_register_prov_callback (int ) ;
 int example_ble_mesh_config_server_cb ;
 int example_ble_mesh_generic_client_cb ;
 int example_ble_mesh_provisioning_cb ;
 int provision ;

__attribute__((used)) static esp_err_t ble_mesh_init(void)
{
    esp_err_t err = 0;

    esp_ble_mesh_register_prov_callback(example_ble_mesh_provisioning_cb);
    esp_ble_mesh_register_generic_client_callback(example_ble_mesh_generic_client_cb);
    esp_ble_mesh_register_config_server_callback(example_ble_mesh_config_server_cb);

    err = esp_ble_mesh_init(&provision, &composition);
    if (err) {
        ESP_LOGE(TAG, "Initializing mesh failed (err %d)", err);
        return err;
    }

    esp_ble_mesh_node_prov_enable(ESP_BLE_MESH_PROV_ADV | ESP_BLE_MESH_PROV_GATT);

    ESP_LOGI(TAG, "BLE Mesh Node initialized");

    board_led_operation(LED_G, LED_ON);

    return err;
}
