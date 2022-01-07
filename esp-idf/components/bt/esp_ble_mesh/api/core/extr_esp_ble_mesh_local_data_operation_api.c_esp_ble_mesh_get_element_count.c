
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int btc_ble_mesh_elem_count () ;

uint8_t esp_ble_mesh_get_element_count(void)
{
    return btc_ble_mesh_elem_count();
}
