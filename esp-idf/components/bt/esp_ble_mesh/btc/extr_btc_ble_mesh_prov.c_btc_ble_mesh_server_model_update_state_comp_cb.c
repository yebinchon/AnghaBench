
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_ble_mesh_server_state_type_t ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int err_code; int type; int * model; } ;
struct TYPE_5__ {TYPE_1__ server_model_update_state; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_model_cb_param_t ;


 int ESP_BLE_MESH_SERVER_MODEL_UPDATE_STATE_COMP_EVT ;
 int btc_ble_mesh_model_callback (TYPE_2__*,int ) ;

__attribute__((used)) static void btc_ble_mesh_server_model_update_state_comp_cb(esp_ble_mesh_model_t *model,
        esp_ble_mesh_server_state_type_t type, int err)
{
    esp_ble_mesh_model_cb_param_t mesh_param = {0};

    mesh_param.server_model_update_state.err_code = err;
    mesh_param.server_model_update_state.model = model;
    mesh_param.server_model_update_state.type = type;

    btc_ble_mesh_model_callback(&mesh_param, ESP_BLE_MESH_SERVER_MODEL_UPDATE_STATE_COMP_EVT);
    return;
}
