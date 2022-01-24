#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
struct TYPE_9__ {int num_uuids; int /*<<< orphan*/  uuid_list; int /*<<< orphan*/  stat; int /*<<< orphan*/  bda; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_10__ {TYPE_2__ rmt_srvcs; TYPE_1__ disc_st_chg; } ;
typedef  TYPE_3__ esp_bt_gap_cb_param_t ;
typedef  int esp_bt_gap_cb_event_t ;
struct TYPE_11__ {int /*<<< orphan*/  bda; int /*<<< orphan*/  state; int /*<<< orphan*/  dev_found; } ;
typedef  TYPE_4__ app_gap_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_GAP_STATE_DEVICE_DISCOVERING ; 
 int /*<<< orphan*/  APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE ; 
 int /*<<< orphan*/  APP_GAP_STATE_SERVICE_DISCOVERING ; 
 int /*<<< orphan*/  APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE ; 
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
 int /*<<< orphan*/  ESP_BT_GAP_DISCOVERY_STARTED ; 
 int /*<<< orphan*/  ESP_BT_GAP_DISCOVERY_STOPPED ; 
#define  ESP_BT_GAP_DISC_RES_EVT 131 
#define  ESP_BT_GAP_DISC_STATE_CHANGED_EVT 130 
#define  ESP_BT_GAP_RMT_SRVCS_EVT 129 
#define  ESP_BT_GAP_RMT_SRVC_REC_EVT 128 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  GAP_TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ m_dev_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC6(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    app_gap_cb_t *p_dev = &m_dev_info;
    char bda_str[18];
    char uuid_str[37];

    switch (event) {
    case ESP_BT_GAP_DISC_RES_EVT: {
        FUNC4(param);
        break;
    }
    case ESP_BT_GAP_DISC_STATE_CHANGED_EVT: {
        if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STOPPED) {
            FUNC0(GAP_TAG, "Device discovery stopped.");
            if ( (p_dev->state == APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE ||
                    p_dev->state == APP_GAP_STATE_DEVICE_DISCOVERING)
                    && p_dev->dev_found) {
                p_dev->state = APP_GAP_STATE_SERVICE_DISCOVERING;
                FUNC0(GAP_TAG, "Discover services ...");
                FUNC2(p_dev->bda);
            }
        } else if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STARTED) {
            FUNC0(GAP_TAG, "Discovery started.");
        }
        break;
    }
    case ESP_BT_GAP_RMT_SRVCS_EVT: {
        if (FUNC3(param->rmt_srvcs.bda, p_dev->bda, ESP_BD_ADDR_LEN) == 0 &&
                p_dev->state == APP_GAP_STATE_SERVICE_DISCOVERING) {
            p_dev->state = APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE;
            if (param->rmt_srvcs.stat == ESP_BT_STATUS_SUCCESS) {
                FUNC0(GAP_TAG, "Services for device %s found",  FUNC1(p_dev->bda, bda_str, 18));
                for (int i = 0; i < param->rmt_srvcs.num_uuids; i++) {
                    esp_bt_uuid_t *u = param->rmt_srvcs.uuid_list + i;
                    FUNC0(GAP_TAG, "--%s", FUNC5(u, uuid_str, 37));
                    // ESP_LOGI(GAP_TAG, "--%d", u->len);
                }
            } else {
                FUNC0(GAP_TAG, "Services for device %s not found",  FUNC1(p_dev->bda, bda_str, 18));
            }
        }
        break;
    }
    case ESP_BT_GAP_RMT_SRVC_REC_EVT:
    default: {
        FUNC0(GAP_TAG, "event: %d", event);
        break;
    }
    }
    return;
}