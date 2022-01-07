
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_gap_ble_cb_event_t ;
struct TYPE_7__ {char* addr_type; int fail_reason; int success; int bd_addr; } ;
struct TYPE_6__ {int * bd_addr; } ;
struct TYPE_8__ {TYPE_2__ auth_cmpl; TYPE_1__ ble_req; } ;
struct TYPE_9__ {TYPE_3__ ble_security; } ;
typedef TYPE_4__ esp_ble_gap_cb_param_t ;
typedef int* esp_bd_addr_t ;


 int ESP_BD_ADDR_LEN ;



 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,char*,...) ;
 int HID_DEMO_TAG ;
 int esp_ble_gap_security_rsp (int *,int) ;
 int esp_ble_gap_start_advertising (int *) ;
 int hidd_adv_params ;
 int memcpy (int*,int ,int) ;
 int sec_conn ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    case 130:
        esp_ble_gap_start_advertising(&hidd_adv_params);
        break;
     case 128:
        for(int i = 0; i < ESP_BD_ADDR_LEN; i++) {
             ESP_LOGD(HID_DEMO_TAG, "%x:",param->ble_security.ble_req.bd_addr[i]);
        }
        esp_ble_gap_security_rsp(param->ble_security.ble_req.bd_addr, 1);
  break;
     case 129:
        sec_conn = 1;
        esp_bd_addr_t bd_addr;
        memcpy(bd_addr, param->ble_security.auth_cmpl.bd_addr, sizeof(esp_bd_addr_t));
        ESP_LOGI(HID_DEMO_TAG, "remote BD_ADDR: %08x%04x", (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],

                (bd_addr[4] << 8) + bd_addr[5]);
        ESP_LOGI(HID_DEMO_TAG, "address type = %d", param->ble_security.auth_cmpl.addr_type);
        ESP_LOGI(HID_DEMO_TAG, "pair status = %s",param->ble_security.auth_cmpl.success ? "success" : "fail");
        if(!param->ble_security.auth_cmpl.success) {
            ESP_LOGE(HID_DEMO_TAG, "fail reason = 0x%x",param->ble_security.auth_cmpl.fail_reason);
        }
        break;
    default:
        break;
    }
}
