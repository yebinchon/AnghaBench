
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bt_mesh_model {int dummy; } ;
typedef int esp_ble_mesh_model_t ;


 int * bt_mesh_model_find_group (struct bt_mesh_model*,int ) ;

uint16_t *btc_ble_mesh_model_find_group(esp_ble_mesh_model_t *mod, uint16_t addr)
{
    return bt_mesh_model_find_group((struct bt_mesh_model *)mod, addr);
}
