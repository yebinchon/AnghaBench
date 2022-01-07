
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_gatt_perm_t ;
typedef scalar_t__ esp_err_t ;
typedef int esp_bt_uuid_t ;
struct TYPE_18__ {int attr_value; int attr_len; int attr_max_len; } ;
typedef TYPE_4__ esp_attr_value_t ;
struct TYPE_19__ {int auto_rsp; } ;
typedef TYPE_5__ esp_attr_control_t ;
struct TYPE_20__ {int act; int pid; int sig; } ;
typedef TYPE_6__ btc_msg_t ;
struct TYPE_16__ {int auto_rsp; } ;
struct TYPE_15__ {int attr_value; int attr_len; int attr_max_len; } ;
struct TYPE_17__ {int descr_uuid; TYPE_2__ attr_control; TYPE_1__ descr_val; int perm; int service_handle; } ;
struct TYPE_21__ {TYPE_3__ add_descr; } ;
typedef TYPE_7__ btc_ble_gatts_args_t ;


 int BTC_GATTS_ACT_ADD_CHAR_DESCR ;
 int BTC_PID_GATTS ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int btc_gatts_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_6__*,TYPE_7__*,int,int ) ;
 scalar_t__ esp_ble_gatts_add_char_desc_param_check (TYPE_4__*,TYPE_5__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_7__*,int ,int) ;

esp_err_t esp_ble_gatts_add_char_descr (uint16_t service_handle,
                                        esp_bt_uuid_t *descr_uuid,
                                        esp_gatt_perm_t perm, esp_attr_value_t *char_descr_val,
                                        esp_attr_control_t *control)
{
    btc_msg_t msg;
    btc_ble_gatts_args_t arg;
    esp_err_t status;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);


    status = esp_ble_gatts_add_char_desc_param_check(char_descr_val, control);
    if (status != ESP_OK){
        return status;
    }

    memset(&arg, 0, sizeof(btc_ble_gatts_args_t));
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GATTS;
    msg.act = BTC_GATTS_ACT_ADD_CHAR_DESCR;
    arg.add_descr.service_handle = service_handle;
    arg.add_descr.perm = perm;

    if (char_descr_val != ((void*)0)) {
        arg.add_descr.descr_val.attr_max_len = char_descr_val->attr_max_len;
        arg.add_descr.descr_val.attr_len = char_descr_val->attr_len;
        arg.add_descr.descr_val.attr_value = char_descr_val->attr_value;
    }

    if (control != ((void*)0)) {
        arg.add_descr.attr_control.auto_rsp = control->auto_rsp;
    }
    memcpy(&arg.add_descr.descr_uuid, descr_uuid, sizeof(esp_bt_uuid_t));

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gatts_args_t), btc_gatts_arg_deep_copy) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
