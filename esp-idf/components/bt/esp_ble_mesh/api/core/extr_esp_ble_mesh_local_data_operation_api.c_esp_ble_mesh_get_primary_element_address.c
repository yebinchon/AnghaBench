
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int btc_ble_mesh_get_primary_addr () ;

uint16_t esp_ble_mesh_get_primary_element_address(void)
{
    return btc_ble_mesh_get_primary_addr();
}
