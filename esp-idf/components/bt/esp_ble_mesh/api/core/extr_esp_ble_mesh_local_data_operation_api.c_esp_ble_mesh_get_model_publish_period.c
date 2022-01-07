
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_ble_mesh_model_t ;


 int btc_ble_mesh_model_pub_period_get (int *) ;

int32_t esp_ble_mesh_get_model_publish_period(esp_ble_mesh_model_t *model)
{
    if (model == ((void*)0)) {
        return 0;
    }
    return btc_ble_mesh_model_pub_period_get(model);
}
