
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int icon; } ;
struct TYPE_8__ {TYPE_1__ cfg_local_icon; } ;
typedef TYPE_3__ btc_ble_gap_args_t ;


 int BTC_GAP_BLE_ACT_CONFIG_LOCAL_ICON ;
 int BTC_PID_GAP_BLE ;
 int BTC_SIG_API_CALL ;
 int BT_STATUS_SUCCESS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;

esp_err_t esp_ble_gap_config_local_icon (uint16_t icon)
{
    esp_err_t ret;
    btc_msg_t msg;
    btc_ble_gap_args_t arg;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    switch (icon) {
    case 161:
    case 175:
    case 159:
    case 157:
    case 132:
    case 169:
    case 153:
    case 177:
    case 185:
    case 184:
    case 160:
    case 135:
    case 134:
    case 170:
    case 154:
    case 156:
    case 130:
    case 128:
    case 129:
    case 155:
    case 133:
    case 171:
    case 172:
    case 165:
    case 178:
    case 152:
    case 168:
    case 146:
    case 145:
    case 147:
    case 148:
    case 149:
    case 151:
    case 150:
    case 131:
    case 176:
    case 158:
    case 166:
    case 173:
    case 182:
    case 180:
    case 183:
    case 181:
    case 179:
    case 162:
    case 136:
    case 141:
    case 174:
    case 167:
    case 143:
    case 142:
    case 144:
    case 164:
    case 163:
    case 140:
    case 139:
    case 138:
    case 137:
        msg.sig = BTC_SIG_API_CALL;
        msg.pid = BTC_PID_GAP_BLE;
        msg.act = BTC_GAP_BLE_ACT_CONFIG_LOCAL_ICON;
        arg.cfg_local_icon.icon = icon;
        ret = (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gap_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
        break;
    default:
        ret = ESP_ERR_INVALID_ARG;
        break;
    }
    return ret;
}
