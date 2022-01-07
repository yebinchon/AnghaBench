
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_ble_key_type_t ;
__attribute__((used)) static char *esp_key_type_to_str(esp_ble_key_type_t key_type)
{
   char *key_str = ((void*)0);
   switch(key_type) {
    case 132:
        key_str = "ESP_LE_KEY_NONE";
        break;
    case 130:
        key_str = "ESP_LE_KEY_PENC";
        break;
    case 129:
        key_str = "ESP_LE_KEY_PID";
        break;
    case 131:
        key_str = "ESP_LE_KEY_PCSRK";
        break;
    case 128:
        key_str = "ESP_LE_KEY_PLK";
        break;
    case 133:
        key_str = "ESP_LE_KEY_LLK";
        break;
    case 135:
        key_str = "ESP_LE_KEY_LENC";
        break;
    case 134:
        key_str = "ESP_LE_KEY_LID";
        break;
    case 136:
        key_str = "ESP_LE_KEY_LCSRK";
        break;
    default:
        key_str = "INVALID BLE KEY TYPE";
        break;

   }

   return key_str;
}
