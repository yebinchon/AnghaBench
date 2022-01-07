
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_model_t ;
 int * config_client_models ;
 int * config_server_models ;
 int * gen_onoff_cli_models ;
 int * gen_onoff_srv_models ;
 int * test_perf_cli_models ;
 int * test_perf_srv_models ;

esp_ble_mesh_model_t *ble_mesh_get_model(uint16_t model_id)
{
    esp_ble_mesh_model_t *model = ((void*)0);

    switch (model_id) {
    case 132:
        model = &config_server_models[0];
        break;
    case 133:
        model = &config_client_models[0];
        break;
    case 130:
        model = &gen_onoff_srv_models[1];
        break;





    case 129:
        model = &test_perf_cli_models[0];
        break;
    case 128:
        model = &test_perf_srv_models[0];
        break;
    }
    return model;
}
