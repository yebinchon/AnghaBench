
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_err_t ;
typedef int esp_ble_mesh_bd_addr_t ;
typedef scalar_t__ esp_ble_mesh_addr_type_t ;
struct TYPE_7__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int net_idx; scalar_t__ addr_type; int addr; } ;
struct TYPE_8__ {TYPE_1__ proxy_client_connect; int member_0; } ;
typedef TYPE_3__ btc_ble_mesh_prov_args_t ;


 int BD_ADDR_LEN ;
 int BTC_BLE_MESH_ACT_PROXY_CLIENT_CONNECT ;
 int BTC_PID_PROV ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 scalar_t__ ESP_BLE_MESH_ADDR_TYPE_RANDOM ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 int memcpy (int ,int ,int ) ;

esp_err_t esp_ble_mesh_proxy_client_connect(esp_ble_mesh_bd_addr_t addr,
        esp_ble_mesh_addr_type_t addr_type, uint16_t net_idx)
{
    btc_ble_mesh_prov_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!addr || addr_type > ESP_BLE_MESH_ADDR_TYPE_RANDOM) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_PROXY_CLIENT_CONNECT;

    memcpy(arg.proxy_client_connect.addr, addr, BD_ADDR_LEN);
    arg.proxy_client_connect.addr_type = addr_type;
    arg.proxy_client_connect.net_idx = net_idx;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_prov_args_t), ((void*)0))
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
