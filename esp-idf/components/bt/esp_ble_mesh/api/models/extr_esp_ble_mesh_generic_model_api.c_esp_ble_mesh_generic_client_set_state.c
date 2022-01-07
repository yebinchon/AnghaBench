
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int esp_ble_mesh_generic_client_set_state_t ;
struct TYPE_10__ {int addr; } ;
struct TYPE_11__ {TYPE_2__ ctx; int model; } ;
typedef TYPE_3__ esp_ble_mesh_client_common_param_t ;
struct TYPE_12__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_4__ btc_msg_t ;
struct TYPE_9__ {int * set_state; TYPE_3__* params; } ;
struct TYPE_13__ {TYPE_1__ generic_client_set_state; int member_0; } ;
typedef TYPE_5__ btc_ble_mesh_generic_client_args_t ;


 int BTC_BLE_MESH_ACT_GENERIC_CLIENT_SET_STATE ;
 int BTC_PID_GENERIC_CLIENT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_ble_mesh_generic_client_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_4__*,TYPE_5__*,int,int ) ;

esp_err_t esp_ble_mesh_generic_client_set_state(esp_ble_mesh_client_common_param_t *params,
        esp_ble_mesh_generic_client_set_state_t *set_state)
{
    btc_ble_mesh_generic_client_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!params || !params->model || !params->ctx.addr || !set_state) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GENERIC_CLIENT;
    msg.act = BTC_BLE_MESH_ACT_GENERIC_CLIENT_SET_STATE;
    arg.generic_client_set_state.params = params;
    arg.generic_client_set_state.set_state = set_state;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_generic_client_args_t), btc_ble_mesh_generic_client_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
