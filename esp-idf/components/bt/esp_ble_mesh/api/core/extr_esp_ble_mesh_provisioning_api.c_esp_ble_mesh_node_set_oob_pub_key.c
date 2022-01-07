
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int private_key; int pub_key_y; int pub_key_x; } ;
struct TYPE_8__ {TYPE_1__ set_oob_pub_key; int member_0; } ;
typedef TYPE_3__ btc_ble_mesh_prov_args_t ;


 int BTC_BLE_MESH_ACT_SET_OOB_PUB_KEY ;
 int BTC_PID_PROV ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 int memcpy (int ,int *,int) ;

esp_err_t esp_ble_mesh_node_set_oob_pub_key(uint8_t pub_key_x[32], uint8_t pub_key_y[32],
        uint8_t private_key[32])
{
    btc_ble_mesh_prov_args_t arg = {0};
    btc_msg_t msg = {0};

    if (!pub_key_x || !pub_key_y || !private_key) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_SET_OOB_PUB_KEY;

    memcpy(arg.set_oob_pub_key.pub_key_x, pub_key_x, 32);
    memcpy(arg.set_oob_pub_key.pub_key_y, pub_key_y, 32);
    memcpy(arg.set_oob_pub_key.private_key, private_key, 32);

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_mesh_prov_args_t), ((void*)0))
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
