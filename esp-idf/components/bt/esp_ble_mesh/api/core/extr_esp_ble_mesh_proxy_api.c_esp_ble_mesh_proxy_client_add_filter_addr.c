
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {scalar_t__* addr; scalar_t__ addr_num; scalar_t__ net_idx; int conn_handle; } ;
struct TYPE_8__ {TYPE_1__ proxy_client_add_filter_addr; int member_0; } ;
typedef TYPE_3__ btc_ble_mesh_prov_args_t ;


 int BTC_BLE_MESH_ACT_PROXY_CLIENT_ADD_FILTER_ADDR ;
 int BTC_PID_PROV ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_ble_mesh_prov_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;

esp_err_t esp_ble_mesh_proxy_client_add_filter_addr(uint8_t conn_handle,
        uint16_t net_idx, uint16_t *addr, uint16_t addr_num)
{
    btc_ble_mesh_prov_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!addr || addr_num == 0) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_PROXY_CLIENT_ADD_FILTER_ADDR;

    arg.proxy_client_add_filter_addr.conn_handle = conn_handle;
    arg.proxy_client_add_filter_addr.net_idx = net_idx;
    arg.proxy_client_add_filter_addr.addr_num = addr_num;
    arg.proxy_client_add_filter_addr.addr = addr;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_prov_args_t), btc_ble_mesh_prov_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
