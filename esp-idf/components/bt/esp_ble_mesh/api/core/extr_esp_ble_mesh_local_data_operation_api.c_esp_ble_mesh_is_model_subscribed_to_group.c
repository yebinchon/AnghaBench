
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_model_t ;


 int * btc_ble_mesh_model_find_group (int *,int ) ;

uint16_t *esp_ble_mesh_is_model_subscribed_to_group(esp_ble_mesh_model_t *model, uint16_t group_addr)
{
    if (model == ((void*)0)) {
        return ((void*)0);
    }
    return btc_ble_mesh_model_find_group(model, group_addr);
}
