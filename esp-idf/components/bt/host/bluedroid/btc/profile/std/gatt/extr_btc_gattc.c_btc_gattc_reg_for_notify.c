
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBTA_GATT_STATUS ;
struct TYPE_8__ {int handle; int status; } ;
struct TYPE_10__ {TYPE_1__ reg_for_notify; } ;
typedef TYPE_3__ esp_ble_gattc_cb_param_t ;
struct TYPE_9__ {int gattc_if; int handle; int remote_bda; } ;
struct TYPE_11__ {TYPE_2__ reg_for_notify; } ;
typedef TYPE_4__ btc_ble_gattc_args_t ;


 int BTA_GATTC_RegisterForNotifications (int ,int ,int ) ;
 int ESP_GATTC_REG_FOR_NOTIFY_EVT ;
 int btc_gattc_cb_to_app (int ,int ,TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void btc_gattc_reg_for_notify(btc_ble_gattc_args_t *arg)
{
    tBTA_GATT_STATUS status;
    esp_ble_gattc_cb_param_t param;

    status = BTA_GATTC_RegisterForNotifications(arg->reg_for_notify.gattc_if,
             arg->reg_for_notify.remote_bda,
             arg->reg_for_notify.handle);

    memset(&param, 0, sizeof(esp_ble_gattc_cb_param_t));
    param.reg_for_notify.status = status;
    param.reg_for_notify.handle = arg->reg_for_notify.handle;
    btc_gattc_cb_to_app(ESP_GATTC_REG_FOR_NOTIFY_EVT, arg->reg_for_notify.gattc_if, &param);
}
