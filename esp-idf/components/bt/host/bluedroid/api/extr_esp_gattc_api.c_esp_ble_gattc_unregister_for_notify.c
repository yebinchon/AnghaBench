
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_gatt_if_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int remote_bda; int handle; int gattc_if; } ;
struct TYPE_8__ {TYPE_1__ unreg_for_notify; } ;
typedef TYPE_3__ btc_ble_gattc_args_t ;


 int BTC_GATTC_ACT_UNREG_FOR_NOTIFY ;
 int BTC_PID_GATTC ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 int memcpy (int ,int ,int) ;

esp_err_t esp_ble_gattc_unregister_for_notify (esp_gatt_if_t gattc_if,
                                               esp_bd_addr_t server_bda, uint16_t handle)
{
    btc_msg_t msg;
    btc_ble_gattc_args_t arg;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GATTC;
    msg.act = BTC_GATTC_ACT_UNREG_FOR_NOTIFY;
    arg.unreg_for_notify.gattc_if = gattc_if;
    arg.unreg_for_notify.handle = handle;
    memcpy(arg.unreg_for_notify.remote_bda, server_bda, sizeof(esp_bd_addr_t));
    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gattc_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
