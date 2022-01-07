
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_ble_mesh_comp_t ;


 scalar_t__ bt_mesh_comp_get () ;

const esp_ble_mesh_comp_t *btc_ble_mesh_comp_get(void)
{
    return (const esp_ble_mesh_comp_t *)bt_mesh_comp_get();
}
