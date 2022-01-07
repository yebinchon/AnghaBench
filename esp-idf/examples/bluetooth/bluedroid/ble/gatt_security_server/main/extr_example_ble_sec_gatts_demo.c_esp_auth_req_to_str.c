
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_ble_auth_req_t ;
__attribute__((used)) static char *esp_auth_req_to_str(esp_ble_auth_req_t auth_req)
{
   char *auth_str = ((void*)0);
   switch(auth_req) {
    case 134:
        auth_str = "ESP_LE_AUTH_NO_BOND";
        break;
    case 135:
        auth_str = "ESP_LE_AUTH_BOND";
        break;
    case 132:
        auth_str = "ESP_LE_AUTH_REQ_MITM";
        break;
    case 133:
        auth_str = "ESP_LE_AUTH_REQ_BOND_MITM";
        break;
    case 128:
        auth_str = "ESP_LE_AUTH_REQ_SC_ONLY";
        break;
    case 131:
        auth_str = "ESP_LE_AUTH_REQ_SC_BOND";
        break;
    case 130:
        auth_str = "ESP_LE_AUTH_REQ_SC_MITM";
        break;
    case 129:
        auth_str = "ESP_LE_AUTH_REQ_SC_MITM_BOND";
        break;
    default:
        auth_str = "INVALID BLE AUTH REQ";
        break;
   }

   return auth_str;
}
