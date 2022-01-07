
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int esp_err_t ;
typedef int esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_dev_role_t ;


 int BTC_BLE_MESH_ACT_CLIENT_MODEL_SEND ;
 int ESP_ERR_INVALID_ARG ;
 int ble_mesh_model_send_msg (int *,int *,int ,int ,int ,int *,int ,int,int ) ;

esp_err_t esp_ble_mesh_client_model_send_msg(esp_ble_mesh_model_t *model,
        esp_ble_mesh_msg_ctx_t *ctx, uint32_t opcode,
        uint16_t length, uint8_t *data, int32_t msg_timeout,
        bool need_rsp, esp_ble_mesh_dev_role_t device_role)
{
    if (!model || !ctx) {
        return ESP_ERR_INVALID_ARG;
    }
    return ble_mesh_model_send_msg(model, ctx, opcode, BTC_BLE_MESH_ACT_CLIENT_MODEL_SEND,
                                   length, data, msg_timeout, need_rsp, device_role);
}
