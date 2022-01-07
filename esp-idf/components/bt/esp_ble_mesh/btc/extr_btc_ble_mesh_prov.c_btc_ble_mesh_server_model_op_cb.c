
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_buf_simple {int data; int len; } ;
struct bt_mesh_msg_ctx {int recv_op; } ;
struct bt_mesh_model {int dummy; } ;
typedef int esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int msg; int length; int * ctx; int * model; int opcode; } ;
struct TYPE_5__ {TYPE_1__ model_operation; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_model_cb_param_t ;


 int ESP_BLE_MESH_MODEL_OPERATION_EVT ;
 int btc_ble_mesh_model_callback (TYPE_2__*,int ) ;

__attribute__((used)) static void btc_ble_mesh_server_model_op_cb(struct bt_mesh_model *model,
        struct bt_mesh_msg_ctx *ctx,
        struct net_buf_simple *buf)
{
    esp_ble_mesh_model_cb_param_t mesh_param = {0};

    mesh_param.model_operation.opcode = ctx->recv_op;
    mesh_param.model_operation.model = (esp_ble_mesh_model_t *)model;
    mesh_param.model_operation.ctx = (esp_ble_mesh_msg_ctx_t *)ctx;
    mesh_param.model_operation.length = buf->len;
    mesh_param.model_operation.msg = buf->data;

    btc_ble_mesh_model_callback(&mesh_param, ESP_BLE_MESH_MODEL_OPERATION_EVT);
    return;
}
