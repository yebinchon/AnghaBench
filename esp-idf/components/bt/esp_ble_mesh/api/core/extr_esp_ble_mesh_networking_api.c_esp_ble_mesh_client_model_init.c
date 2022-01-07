
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int esp_ble_mesh_model_t ;


 int ESP_ERR_INVALID_ARG ;
 int btc_ble_mesh_client_model_init (int *) ;

esp_err_t esp_ble_mesh_client_model_init(esp_ble_mesh_model_t *model)
{
    if (model == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    return btc_ble_mesh_client_model_init(model);
}
