
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int esp_err_t ;
typedef int esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;


 int BTC_BLE_MESH_ACT_SERVER_MODEL_SEND ;
 int ESP_ERR_INVALID_ARG ;
 int ROLE_NODE ;
 int ble_mesh_model_send_msg (int *,int *,int ,int ,int ,int *,int ,int,int ) ;

esp_err_t esp_ble_mesh_server_model_send_msg(esp_ble_mesh_model_t *model,
        esp_ble_mesh_msg_ctx_t *ctx, uint32_t opcode,
        uint16_t length, uint8_t *data)
{
    if (!model || !ctx) {
        return ESP_ERR_INVALID_ARG;
    }
    return ble_mesh_model_send_msg(model, ctx, opcode, BTC_BLE_MESH_ACT_SERVER_MODEL_SEND,
                                   length, data, 0, 0, ROLE_NODE);
}
