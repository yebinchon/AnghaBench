
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
typedef int esp_ble_mesh_elem_t ;


 scalar_t__ bt_mesh_elem_find (int ) ;

esp_ble_mesh_elem_t *btc_ble_mesh_elem_find(u16_t addr)
{
    return (esp_ble_mesh_elem_t *)bt_mesh_elem_find(addr);
}
