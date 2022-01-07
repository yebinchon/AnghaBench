
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32_t ;
typedef int esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int err_code; int * ctx; int * model; int opcode; } ;
struct TYPE_5__ {TYPE_1__ model_send_comp; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_model_cb_param_t ;


 int ESP_BLE_MESH_MODEL_SEND_COMP_EVT ;
 int btc_ble_mesh_model_callback (TYPE_2__*,int ) ;

__attribute__((used)) static void btc_ble_mesh_model_send_comp_cb(esp_ble_mesh_model_t *model, esp_ble_mesh_msg_ctx_t *ctx, u32_t opcode, int err)
{
    esp_ble_mesh_model_cb_param_t mesh_param = {0};

    mesh_param.model_send_comp.err_code = err;
    mesh_param.model_send_comp.opcode = opcode;
    mesh_param.model_send_comp.model = model;
    mesh_param.model_send_comp.ctx = ctx;

    btc_ble_mesh_model_callback(&mesh_param, ESP_BLE_MESH_MODEL_SEND_COMP_EVT);
    return;
}
