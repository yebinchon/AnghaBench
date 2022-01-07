
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_bt_status_t ;


 int ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT ;
 int ESP_BT_STATUS_FAIL ;
 int ESP_BT_STATUS_PARAM_OUT_OF_RANGE ;
 int ESP_BT_STATUS_PENDING ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_BT_STATUS_TIMEOUT ;
 int ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL ;







esp_bt_status_t btc_hci_to_esp_status(uint8_t hci_status)
{
    esp_bt_status_t esp_status = ESP_BT_STATUS_FAIL;
    switch(hci_status) {
        case 128:
            esp_status = ESP_BT_STATUS_SUCCESS;
            break;
        case 133:
            esp_status = ESP_BT_STATUS_TIMEOUT;
            break;
        case 132:
            esp_status = ESP_BT_STATUS_PENDING;
            break;
        case 129:
            esp_status = ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL;
            break;
        case 130:
            esp_status = ESP_BT_STATUS_PARAM_OUT_OF_RANGE;
            break;
        case 131:
            esp_status = ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT;
            break;
        default:
            esp_status = ESP_BT_STATUS_FAIL;
            break;
    }

    return esp_status;
}
