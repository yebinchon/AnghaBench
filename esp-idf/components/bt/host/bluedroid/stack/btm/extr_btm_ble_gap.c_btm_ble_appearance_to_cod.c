
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
 scalar_t__ BTM_COD_MAJOR_AUDIO ;
 scalar_t__ BTM_COD_MAJOR_COMPUTER ;
 scalar_t__ BTM_COD_MAJOR_HEALTH ;
 scalar_t__ BTM_COD_MAJOR_IMAGING ;
 scalar_t__ BTM_COD_MAJOR_PERIPHERAL ;
 scalar_t__ BTM_COD_MAJOR_PHONE ;
 scalar_t__ BTM_COD_MAJOR_UNCLASSIFIED ;
 scalar_t__ BTM_COD_MAJOR_WEARABLE ;
 scalar_t__ BTM_COD_MINOR_BLOOD_MONITOR ;
 scalar_t__ BTM_COD_MINOR_CARD_READER ;
 scalar_t__ BTM_COD_MINOR_DIGITAL_PAN ;
 scalar_t__ BTM_COD_MINOR_DIGITIZING_TABLET ;
 scalar_t__ BTM_COD_MINOR_DISPLAY ;
 scalar_t__ BTM_COD_MINOR_GAMEPAD ;
 scalar_t__ BTM_COD_MINOR_GLASSES ;
 scalar_t__ BTM_COD_MINOR_GLUCOSE_METER ;
 scalar_t__ BTM_COD_MINOR_HEART_PULSE_MONITOR ;
 scalar_t__ BTM_COD_MINOR_JOYSTICK ;
 scalar_t__ BTM_COD_MINOR_KEYBOARD ;
 scalar_t__ BTM_COD_MINOR_POINTING ;
 scalar_t__ BTM_COD_MINOR_PULSE_OXIMETER ;
 scalar_t__ BTM_COD_MINOR_REMOTE_CONTROL ;
 scalar_t__ BTM_COD_MINOR_STEP_COUNTER ;
 scalar_t__ BTM_COD_MINOR_THERMOMETER ;
 scalar_t__ BTM_COD_MINOR_UNCLASSIFIED ;
 scalar_t__ BTM_COD_MINOR_WEIGHING_SCALE ;
 scalar_t__ BTM_COD_MINOR_WRIST_WATCH ;

__attribute__((used)) static void btm_ble_appearance_to_cod(UINT16 appearance, UINT8 *dev_class)
{
    dev_class[0] = 0;

    switch (appearance) {
    case 156:
        dev_class[1] = BTM_COD_MAJOR_PHONE;
        dev_class[2] = BTM_COD_MINOR_UNCLASSIFIED;
        break;
    case 166:
        dev_class[1] = BTM_COD_MAJOR_COMPUTER;
        dev_class[2] = BTM_COD_MINOR_UNCLASSIFIED;
        break;
    case 154:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_REMOTE_CONTROL;
        break;
    case 152:
    case 132:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_THERMOMETER;
        break;
    case 161:
    case 148:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_HEART_PULSE_MONITOR;
        break;
    case 168:
    case 176:
    case 175:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_BLOOD_MONITOR;
        break;
    case 155:
    case 135:
    case 134:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_PULSE_OXIMETER;
        break;
    case 162:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_GLUCOSE_METER;
        break;
    case 149:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_WEIGHING_SCALE;
        break;
    case 151:
    case 130:
    case 128:
    case 129:
        dev_class[1] = BTM_COD_MAJOR_HEALTH;
        dev_class[2] = BTM_COD_MINOR_STEP_COUNTER;
        break;
    case 150:
    case 133:
        dev_class[1] = BTM_COD_MAJOR_WEARABLE;
        dev_class[2] = BTM_COD_MINOR_WRIST_WATCH;
        break;
    case 163:
        dev_class[1] = BTM_COD_MAJOR_WEARABLE;
        dev_class[2] = BTM_COD_MINOR_GLASSES;
        break;
    case 164:
        dev_class[1] = BTM_COD_MAJOR_IMAGING;
        dev_class[2] = BTM_COD_MINOR_DISPLAY;
        break;
    case 158:
        dev_class[1] = BTM_COD_MAJOR_AUDIO;
        dev_class[2] = BTM_COD_MINOR_UNCLASSIFIED;
        break;
    case 169:
    case 147:
    case 160:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_UNCLASSIFIED;
        break;
    case 141:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_KEYBOARD;
        break;
    case 140:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_POINTING;
        break;
    case 142:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_JOYSTICK;
        break;
    case 143:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_GAMEPAD;
        break;
    case 144:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_DIGITIZING_TABLET;
        break;
    case 146:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_CARD_READER;
        break;
    case 145:
        dev_class[1] = BTM_COD_MAJOR_PERIPHERAL;
        dev_class[2] = BTM_COD_MINOR_DIGITAL_PAN;
        break;
    case 131:
    case 167:
    case 153:
    case 159:
    case 165:
    case 173:
    case 171:
    case 174:
    case 172:
    case 170:
    case 157:
    case 139:
    case 138:
    case 137:
    case 136:
    default:
        dev_class[1] = BTM_COD_MAJOR_UNCLASSIFIED;
        dev_class[2] = BTM_COD_MINOR_UNCLASSIFIED;
    };
}
