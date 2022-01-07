
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_elem_t ;


 int CID_NVAL ;
 int ESP_BLE_MESH_ADDR_IS_UNICAST (int ) ;
 int * esp_ble_mesh_find_element (int ) ;
 int * esp_ble_mesh_find_sig_model (int *,int ) ;
 int * esp_ble_mesh_find_vendor_model (int *,int ,int ) ;

esp_ble_mesh_model_t *example_find_model(uint16_t element_addr, uint16_t model_id,
        uint16_t company_id)
{
    esp_ble_mesh_elem_t *element = ((void*)0);

    if (!ESP_BLE_MESH_ADDR_IS_UNICAST(element_addr)) {
        return ((void*)0);
    }

    element = esp_ble_mesh_find_element(element_addr);
    if (!element) {
        return ((void*)0);
    }

    if (company_id == CID_NVAL) {
        return esp_ble_mesh_find_sig_model(element, model_id);
    } else {
        return esp_ble_mesh_find_vendor_model(element, company_id, model_id);
    }
}
