
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int data; int handle; } ;
struct TYPE_8__ {TYPE_1__ data_ind; } ;
typedef TYPE_2__ esp_spp_cb_param_t ;
typedef int esp_spp_cb_event_t ;
struct TYPE_9__ {int tv_sec; } ;


 int ESP_BT_CONNECTABLE ;
 int ESP_BT_GENERAL_DISCOVERABLE ;
 int ESP_LOGI (int ,char*,...) ;
 int EXAMPLE_DEVICE_NAME ;
 int SPP_SERVER_NAME ;
 int SPP_TAG ;
 int data_num ;
 int esp_bt_dev_set_device_name (int ) ;
 int esp_bt_gap_set_scan_mode (int ,int ) ;
 int esp_log_buffer_hex (char*,int ,int ) ;
 int esp_spp_start_srv (int ,int ,int ,int ) ;
 int gettimeofday (TYPE_3__*,int *) ;
 int print_speed () ;
 int role_slave ;
 int sec_mask ;
 TYPE_3__ time_new ;
 TYPE_3__ time_old ;

__attribute__((used)) static void esp_spp_cb(esp_spp_cb_event_t event, esp_spp_cb_param_t *param)
{
    switch (event) {
    case 132:
        ESP_LOGI(SPP_TAG, "ESP_SPP_INIT_EVT");
        esp_bt_dev_set_device_name(EXAMPLE_DEVICE_NAME);
        esp_bt_gap_set_scan_mode(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        esp_spp_start_srv(sec_mask,role_slave, 0, SPP_SERVER_NAME);
        break;
    case 133:
        ESP_LOGI(SPP_TAG, "ESP_SPP_DISCOVERY_COMP_EVT");
        break;
    case 131:
        ESP_LOGI(SPP_TAG, "ESP_SPP_OPEN_EVT");
        break;
    case 137:
        ESP_LOGI(SPP_TAG, "ESP_SPP_CLOSE_EVT");
        break;
    case 129:
        ESP_LOGI(SPP_TAG, "ESP_SPP_START_EVT");
        break;
    case 136:
        ESP_LOGI(SPP_TAG, "ESP_SPP_CL_INIT_EVT");
        break;
    case 134:

        ESP_LOGI(SPP_TAG, "ESP_SPP_DATA_IND_EVT len=%d handle=%d",
                 param->data_ind.len, param->data_ind.handle);
        esp_log_buffer_hex("",param->data_ind.data,param->data_ind.len);







        break;
    case 135:
        ESP_LOGI(SPP_TAG, "ESP_SPP_CONG_EVT");
        break;
    case 128:
        ESP_LOGI(SPP_TAG, "ESP_SPP_WRITE_EVT");
        break;
    case 130:
        ESP_LOGI(SPP_TAG, "ESP_SPP_SRV_OPEN_EVT");
        gettimeofday(&time_old, ((void*)0));
        break;
    default:
        break;
    }
}
