
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int esp_err_t ;
typedef scalar_t__ esp_bt_pin_type_t ;
typedef int esp_bt_pin_code_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int pin_code; scalar_t__ pin_code_len; scalar_t__ pin_type; } ;
struct TYPE_8__ {TYPE_1__ set_pin_type; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;


 int BTC_GAP_BT_ACT_SET_PIN_TYPE ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_BT_PIN_CODE_LEN ;
 scalar_t__ ESP_BT_PIN_TYPE_FIXED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_gap_bt_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int ,int ,int ) ;

esp_err_t esp_bt_gap_set_pin(esp_bt_pin_type_t pin_type, uint8_t pin_code_len, esp_bt_pin_code_t pin_code)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_SET_PIN_TYPE;
    arg.set_pin_type.pin_type = pin_type;
    if (pin_type == ESP_BT_PIN_TYPE_FIXED){
        arg.set_pin_type.pin_code_len = pin_code_len;
        memcpy(arg.set_pin_type.pin_code, pin_code, pin_code_len);
    } else {
        arg.set_pin_type.pin_code_len = 0;
        memset(arg.set_pin_type.pin_code, 0, ESP_BT_PIN_CODE_LEN);
    }

    return (btc_transfer_context(&msg, &arg, sizeof(btc_gap_bt_args_t), btc_gap_bt_arg_deep_copy)
            == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
