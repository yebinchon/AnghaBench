
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int esp_ble_mesh_comp_t ;
 int config_client_comp ;
 int config_server_comp ;
 int gen_onoff_cli_comp ;
 int gen_onoff_srv_comp ;
 int test_perf_cli_comp ;
 int test_perf_srv_comp ;

esp_ble_mesh_comp_t *ble_mesh_get_component(uint16_t model_id)
{
    esp_ble_mesh_comp_t *comp = ((void*)0);

    switch (model_id) {
    case 132:
        comp = &config_server_comp;
        break;
    case 133:
        comp = &config_client_comp;
        break;
    case 130:
        comp = &gen_onoff_srv_comp;
        break;





    case 129:
        comp = &test_perf_cli_comp;
        break;
    case 128:
        comp = &test_perf_srv_comp;
        break;
    }
    return comp;
}
