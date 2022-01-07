
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_elem_t ;


 int * btc_ble_mesh_model_find_vnd (int const*,int ,int ) ;

esp_ble_mesh_model_t *esp_ble_mesh_find_vendor_model(const esp_ble_mesh_elem_t *element,
        uint16_t company_id, uint16_t model_id)
{
    if (element == ((void*)0)) {
        return ((void*)0);
    }
    return btc_ble_mesh_model_find_vnd(element, company_id, model_id);
}
