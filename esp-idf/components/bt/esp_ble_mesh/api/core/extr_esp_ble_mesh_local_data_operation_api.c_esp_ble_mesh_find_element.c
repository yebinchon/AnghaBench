
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_elem_t ;


 int * btc_ble_mesh_elem_find (int ) ;

esp_ble_mesh_elem_t *esp_ble_mesh_find_element(uint16_t element_addr)
{
    return btc_ble_mesh_elem_find(element_addr);
}
