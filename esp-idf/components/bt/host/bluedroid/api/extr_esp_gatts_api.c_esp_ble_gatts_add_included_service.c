
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {void* included_service_handle; void* service_handle; } ;
struct TYPE_8__ {TYPE_1__ add_incl_srvc; } ;
typedef TYPE_3__ btc_ble_gatts_args_t ;


 int BTC_GATTS_ACT_ADD_INCLUDE_SERVICE ;
 int BTC_PID_GATTS ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;

esp_err_t esp_ble_gatts_add_included_service(uint16_t service_handle, uint16_t included_service_handle)
{
    btc_msg_t msg;
    btc_ble_gatts_args_t arg;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GATTS;
    msg.act = BTC_GATTS_ACT_ADD_INCLUDE_SERVICE;
    arg.add_incl_srvc.service_handle = service_handle;
    arg.add_incl_srvc.included_service_handle = included_service_handle;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gatts_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
