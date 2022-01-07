
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_bt_status_t ;
 int ESP_BT_STATUS_BUSY ;
 int ESP_BT_STATUS_CONTROL_LE_DATA_LEN_UNSUPPORTED ;
 int ESP_BT_STATUS_FAIL ;
 int ESP_BT_STATUS_NOMEM ;
 int ESP_BT_STATUS_PARM_INVALID ;
 int ESP_BT_STATUS_PEER_LE_DATA_LEN_UNSUPPORTED ;
 int ESP_BT_STATUS_PENDING ;
 int ESP_BT_STATUS_SUCCESS ;

esp_bt_status_t btc_btm_status_to_esp_status (uint8_t btm_status)
{
    esp_bt_status_t esp_status = ESP_BT_STATUS_FAIL;
    switch(btm_status){
        case 128:
            esp_status = ESP_BT_STATUS_SUCCESS;
            break;
        case 136:
            esp_status = ESP_BT_STATUS_BUSY;
            break;
        case 132:
            esp_status = ESP_BT_STATUS_NOMEM;
            break;
        case 133:
            esp_status = ESP_BT_STATUS_PARM_INVALID;
            break;
        case 134:
            esp_status = ESP_BT_STATUS_PENDING;
            break;
        case 131:
            esp_status = ESP_BT_STATUS_PEER_LE_DATA_LEN_UNSUPPORTED;
            break;
        case 135:
            esp_status = ESP_BT_STATUS_CONTROL_LE_DATA_LEN_UNSUPPORTED;
            break;
        case 129:
            esp_status = ESP_BT_STATUS_SUCCESS;
            break;
        case 130:
            esp_status = ESP_BT_STATUS_FAIL;
            break;
        default:
            esp_status = ESP_BT_STATUS_FAIL;
            break;
    }

    return esp_status;
}
