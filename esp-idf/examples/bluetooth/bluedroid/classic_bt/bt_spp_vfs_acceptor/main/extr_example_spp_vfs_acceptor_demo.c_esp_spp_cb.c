
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {TYPE_1__ srv_open; } ;
typedef TYPE_2__ esp_spp_cb_param_t ;
typedef int esp_spp_cb_event_t ;


 int ESP_BT_CONNECTABLE ;
 int ESP_BT_GENERAL_DISCOVERABLE ;
 int ESP_LOGI (int ,char*) ;







 int EXAMPLE_DEVICE_NAME ;
 int SPP_SERVER_NAME ;
 int SPP_TAG ;
 int esp_bt_dev_set_device_name (int ) ;
 int esp_bt_gap_set_scan_mode (int ,int ) ;
 int esp_spp_start_srv (int ,int ,int ,int ) ;
 int role_slave ;
 int sec_mask ;
 int spp_read_handle ;
 int spp_wr_task_start_up (int ,int ) ;

__attribute__((used)) static void esp_spp_cb(uint16_t e, void *p)
{
    esp_spp_cb_event_t event = e;
    esp_spp_cb_param_t *param = p;

    switch (event) {
    case 131:
        ESP_LOGI(SPP_TAG, "ESP_SPP_INIT_EVT");
        esp_bt_dev_set_device_name(EXAMPLE_DEVICE_NAME);
        esp_bt_gap_set_scan_mode(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        esp_spp_start_srv(sec_mask,role_slave, 0, SPP_SERVER_NAME);
        break;
    case 132:
        ESP_LOGI(SPP_TAG, "ESP_SPP_DISCOVERY_COMP_EVT");
        break;
    case 130:
        ESP_LOGI(SPP_TAG, "ESP_SPP_OPEN_EVT");
        break;
    case 134:
        ESP_LOGI(SPP_TAG, "ESP_SPP_CLOSE_EVT");
        break;
    case 128:
        ESP_LOGI(SPP_TAG, "ESP_SPP_START_EVT");
        break;
    case 133:
        ESP_LOGI(SPP_TAG, "ESP_SPP_CL_INIT_EVT");
        break;
    case 129:
        ESP_LOGI(SPP_TAG, "ESP_SPP_SRV_OPEN_EVT");
        spp_wr_task_start_up(spp_read_handle, param->srv_open.fd);
        break;
    default:
        break;
    }
}
