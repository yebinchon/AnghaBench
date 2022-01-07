
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int esp_bt_uuid_t ;
struct TYPE_9__ {int num_uuids; int uuid_list; int stat; int bda; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_10__ {TYPE_2__ rmt_srvcs; TYPE_1__ disc_st_chg; } ;
typedef TYPE_3__ esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;
struct TYPE_11__ {int bda; int state; int dev_found; } ;
typedef TYPE_4__ app_gap_cb_t ;


 int APP_GAP_STATE_DEVICE_DISCOVERING ;
 int APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE ;
 int APP_GAP_STATE_SERVICE_DISCOVERING ;
 int APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE ;
 int ESP_BD_ADDR_LEN ;
 int ESP_BT_GAP_DISCOVERY_STARTED ;
 int ESP_BT_GAP_DISCOVERY_STOPPED ;




 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGI (int ,char*,...) ;
 int GAP_TAG ;
 int bda2str (int ,char*,int) ;
 int esp_bt_gap_get_remote_services (int ) ;
 TYPE_4__ m_dev_info ;
 int memcmp (int ,int ,int ) ;
 int update_device_info (TYPE_3__*) ;
 int uuid2str (int *,char*,int) ;

void bt_app_gap_cb(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    app_gap_cb_t *p_dev = &m_dev_info;
    char bda_str[18];
    char uuid_str[37];

    switch (event) {
    case 131: {
        update_device_info(param);
        break;
    }
    case 130: {
        if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STOPPED) {
            ESP_LOGI(GAP_TAG, "Device discovery stopped.");
            if ( (p_dev->state == APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE ||
                    p_dev->state == APP_GAP_STATE_DEVICE_DISCOVERING)
                    && p_dev->dev_found) {
                p_dev->state = APP_GAP_STATE_SERVICE_DISCOVERING;
                ESP_LOGI(GAP_TAG, "Discover services ...");
                esp_bt_gap_get_remote_services(p_dev->bda);
            }
        } else if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STARTED) {
            ESP_LOGI(GAP_TAG, "Discovery started.");
        }
        break;
    }
    case 129: {
        if (memcmp(param->rmt_srvcs.bda, p_dev->bda, ESP_BD_ADDR_LEN) == 0 &&
                p_dev->state == APP_GAP_STATE_SERVICE_DISCOVERING) {
            p_dev->state = APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE;
            if (param->rmt_srvcs.stat == ESP_BT_STATUS_SUCCESS) {
                ESP_LOGI(GAP_TAG, "Services for device %s found", bda2str(p_dev->bda, bda_str, 18));
                for (int i = 0; i < param->rmt_srvcs.num_uuids; i++) {
                    esp_bt_uuid_t *u = param->rmt_srvcs.uuid_list + i;
                    ESP_LOGI(GAP_TAG, "--%s", uuid2str(u, uuid_str, 37));

                }
            } else {
                ESP_LOGI(GAP_TAG, "Services for device %s not found", bda2str(p_dev->bda, bda_str, 18));
            }
        }
        break;
    }
    case 128:
    default: {
        ESP_LOGI(GAP_TAG, "event: %d", event);
        break;
    }
    }
    return;
}
