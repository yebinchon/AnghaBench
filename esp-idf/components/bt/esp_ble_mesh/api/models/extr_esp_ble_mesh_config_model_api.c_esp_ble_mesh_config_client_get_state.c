
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
struct TYPE_10__ {int addr; } ;
struct TYPE_11__ {TYPE_2__ ctx; int model; } ;
typedef TYPE_3__ esp_ble_mesh_client_common_param_t ;
typedef int esp_ble_mesh_cfg_client_get_state_t ;
struct TYPE_12__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_4__ btc_msg_t ;
struct TYPE_9__ {int * get_state; TYPE_3__* params; } ;
struct TYPE_13__ {TYPE_1__ cfg_client_get_state; int member_0; } ;
typedef TYPE_5__ btc_ble_mesh_config_client_args_t ;


 int BTC_BLE_MESH_ACT_CONFIG_CLIENT_GET_STATE ;
 int BTC_PID_CONFIG_CLIENT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_ble_mesh_config_client_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_4__*,TYPE_5__*,int,int ) ;

esp_err_t esp_ble_mesh_config_client_get_state(esp_ble_mesh_client_common_param_t *params,
        esp_ble_mesh_cfg_client_get_state_t *get_state)
{
    btc_ble_mesh_config_client_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!params || !params->model || !params->ctx.addr || !get_state) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_CONFIG_CLIENT;
    msg.act = BTC_BLE_MESH_ACT_CONFIG_CLIENT_GET_STATE;
    arg.cfg_client_get_state.params = params;
    arg.cfg_client_get_state.get_state = get_state;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_config_client_args_t), btc_ble_mesh_config_client_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
