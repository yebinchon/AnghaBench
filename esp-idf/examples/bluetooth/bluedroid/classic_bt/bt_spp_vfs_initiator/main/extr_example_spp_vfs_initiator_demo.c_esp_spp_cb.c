
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int fd; } ;
struct TYPE_4__ {int * scn; int status; int scn_num; } ;
struct TYPE_6__ {TYPE_2__ open; TYPE_1__ disc_comp; } ;
typedef TYPE_3__ esp_spp_cb_param_t ;
typedef int esp_spp_cb_event_t ;


 int ESP_BT_CONNECTABLE ;
 int ESP_BT_GENERAL_DISCOVERABLE ;
 int ESP_LOGI (int ,char*,...) ;







 int ESP_SPP_SUCCESS ;
 int EXAMPLE_DEVICE_NAME ;
 int SPP_TAG ;
 int esp_bt_dev_set_device_name (int ) ;
 int esp_bt_gap_set_scan_mode (int ,int ) ;
 int esp_bt_gap_start_discovery (int ,int ,int ) ;
 int esp_spp_connect (int ,int ,int ,int ) ;
 int inq_len ;
 int inq_mode ;
 int inq_num_rsps ;
 int peer_bd_addr ;
 int role_master ;
 int sec_mask ;
 int spp_wr_task_start_up (int ,int ) ;
 int spp_write_handle ;

__attribute__((used)) static void esp_spp_cb(uint16_t e, void *p)
{
    esp_spp_cb_event_t event = e;
    esp_spp_cb_param_t *param = p;

    switch (event) {
    case 131:
        ESP_LOGI(SPP_TAG, "ESP_SPP_INIT_EVT");
        esp_bt_dev_set_device_name(EXAMPLE_DEVICE_NAME);
        esp_bt_gap_set_scan_mode(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        esp_bt_gap_start_discovery(inq_mode, inq_len, inq_num_rsps);

        break;
    case 132:
        ESP_LOGI(SPP_TAG, "ESP_SPP_DISCOVERY_COMP_EVT status=%d scn_num=%d",param->disc_comp.status, param->disc_comp.scn_num);
        if (param->disc_comp.status == ESP_SPP_SUCCESS) {
            esp_spp_connect(sec_mask, role_master, param->disc_comp.scn[0], peer_bd_addr);
        }
        break;
    case 130:
        ESP_LOGI(SPP_TAG, "ESP_SPP_OPEN_EVT");
        spp_wr_task_start_up(spp_write_handle, param->open.fd);
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
        break;
    default:
        break;
    }
}
