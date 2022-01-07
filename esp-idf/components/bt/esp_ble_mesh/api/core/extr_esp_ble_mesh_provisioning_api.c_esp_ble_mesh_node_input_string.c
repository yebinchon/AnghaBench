
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int string; } ;
struct TYPE_8__ {TYPE_1__ input_string; int member_0; } ;
typedef TYPE_3__ btc_ble_mesh_prov_args_t ;


 int BTC_BLE_MESH_ACT_INPUT_STRING ;
 int BTC_PID_PROV ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 int memset (int ,int ,int) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int ) ;

esp_err_t esp_ble_mesh_node_input_string(const char *string)
{
    btc_ble_mesh_prov_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!string) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_INPUT_STRING;
    memset(arg.input_string.string, 0, sizeof(arg.input_string.string));
    strncpy(arg.input_string.string, string, strlen(string));

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_prov_args_t), ((void*)0))
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
