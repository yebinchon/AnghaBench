
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_1__* pub; } ;
typedef TYPE_2__ esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_dev_role_t ;
struct TYPE_5__ {int msg; } ;


 int BTC_BLE_MESH_ACT_MODEL_PUBLISH ;
 int ESP_ERR_INVALID_ARG ;
 int ble_mesh_model_send_msg (TYPE_2__*,int *,int ,int ,int ,int *,int ,int,int ) ;

esp_err_t esp_ble_mesh_model_publish(esp_ble_mesh_model_t *model, uint32_t opcode,
                                     uint16_t length, uint8_t *data,
                                     esp_ble_mesh_dev_role_t device_role)
{
    if (!model || !model->pub || !model->pub->msg) {
        return ESP_ERR_INVALID_ARG;
    }
    return ble_mesh_model_send_msg(model, ((void*)0), opcode, BTC_BLE_MESH_ACT_MODEL_PUBLISH,
                                   length, data, 0, 0, device_role);
}
