
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_ble_mesh_comp_t ;


 int const* btc_ble_mesh_comp_get () ;

const esp_ble_mesh_comp_t *esp_ble_mesh_get_composition_data(void)
{
    return btc_ble_mesh_comp_get();
}
