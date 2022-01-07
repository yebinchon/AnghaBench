
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {int act; int pid; int sig; int member_0; } ;
typedef TYPE_1__ btc_msg_t ;


 int BTC_BLE_MESH_ACT_LPN_POLL ;
 int BTC_PID_PROV ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_HOST_STATUS_CHECK (int ) ;
 int ESP_BLE_HOST_STATUS_ENABLED ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_1__*,int *,int ,int *) ;

esp_err_t esp_ble_mesh_lpn_poll(void)
{
    btc_msg_t msg = {0};

    ESP_BLE_HOST_STATUS_CHECK(ESP_BLE_HOST_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_PROV;
    msg.act = BTC_BLE_MESH_ACT_LPN_POLL;

    return (btc_transfer_context(&msg, ((void*)0), 0, ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
