
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int handle; int cong; int len; } ;
struct TYPE_12__ {int handle; int cong; } ;
struct TYPE_11__ {int handle; } ;
struct TYPE_10__ {int * scn; int status; int scn_num; } ;
struct TYPE_14__ {TYPE_4__ write; TYPE_3__ cong; TYPE_2__ srv_open; TYPE_1__ disc_comp; } ;
typedef TYPE_5__ esp_spp_cb_param_t ;
typedef int esp_spp_cb_event_t ;
struct TYPE_15__ {int tv_sec; } ;


 int ESP_BT_CONNECTABLE ;
 int ESP_BT_GENERAL_DISCOVERABLE ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_SPP_SUCCESS ;

 int EXAMPLE_DEVICE_NAME ;
 int SPP_DATA_LEN ;
 int SPP_TAG ;
 int data_num ;
 int esp_bt_dev_set_device_name (int ) ;
 int esp_bt_gap_set_scan_mode (int ,int ) ;
 int esp_bt_gap_start_discovery (int ,int ,int ) ;
 int esp_log_buffer_hex (char*,int ,int ) ;
 int esp_spp_connect (int ,int ,int ,int ) ;
 int esp_spp_write (int ,int ,int ) ;
 int gettimeofday (TYPE_6__*,int *) ;
 int inq_len ;
 int inq_mode ;
 int inq_num_rsps ;
 int peer_bd_addr ;
 int print_speed () ;
 int role_master ;
 int sec_mask ;
 int spp_data ;
 TYPE_6__ time_new ;
 TYPE_6__ time_old ;

__attribute__((used)) static void esp_spp_cb(esp_spp_cb_event_t event, esp_spp_cb_param_t *param)
{
    switch (event) {
    case 132:
        ESP_LOGI(SPP_TAG, "ESP_SPP_INIT_EVT");
        esp_bt_dev_set_device_name(EXAMPLE_DEVICE_NAME);
        esp_bt_gap_set_scan_mode(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        esp_bt_gap_start_discovery(inq_mode, inq_len, inq_num_rsps);

        break;
    case 133:
        ESP_LOGI(SPP_TAG, "ESP_SPP_DISCOVERY_COMP_EVT status=%d scn_num=%d",param->disc_comp.status, param->disc_comp.scn_num);
        if (param->disc_comp.status == ESP_SPP_SUCCESS) {
            esp_spp_connect(sec_mask, role_master, param->disc_comp.scn[0], peer_bd_addr);
        }
        break;
    case 131:
        ESP_LOGI(SPP_TAG, "ESP_SPP_OPEN_EVT");
        esp_spp_write(param->srv_open.handle, SPP_DATA_LEN, spp_data);
        gettimeofday(&time_old, ((void*)0));
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
        ESP_LOGI(SPP_TAG, "ESP_SPP_DATA_IND_EVT");
        break;
    case 135:

        ESP_LOGI(SPP_TAG, "ESP_SPP_CONG_EVT cong=%d", param->cong.cong);

        if (param->cong.cong == 0) {
            esp_spp_write(param->cong.handle, SPP_DATA_LEN, spp_data);
        }
        break;
    case 128:

        ESP_LOGI(SPP_TAG, "ESP_SPP_WRITE_EVT len=%d cong=%d", param->write.len , param->write.cong);
        esp_log_buffer_hex("",spp_data,SPP_DATA_LEN);







        if (param->write.cong == 0) {
            esp_spp_write(param->write.handle, SPP_DATA_LEN, spp_data);
        }
        break;
    case 130:
        ESP_LOGI(SPP_TAG, "ESP_SPP_SRV_OPEN_EVT");
        break;
    default:
        break;
    }
}
