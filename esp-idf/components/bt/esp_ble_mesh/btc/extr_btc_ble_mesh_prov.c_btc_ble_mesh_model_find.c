
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bt_mesh_elem {int dummy; } ;
typedef int esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_elem_t ;


 scalar_t__ bt_mesh_model_find (struct bt_mesh_elem*,int ) ;

esp_ble_mesh_model_t *btc_ble_mesh_model_find(const esp_ble_mesh_elem_t *elem, uint16_t id)
{
    return (esp_ble_mesh_model_t *)bt_mesh_model_find((struct bt_mesh_elem *)elem, id);
}
