#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char* esp_bt_pin_code_t ;
struct TYPE_10__ {int passkey; } ;
struct TYPE_9__ {int num_val; int /*<<< orphan*/  bda; } ;
struct TYPE_8__ {int min_16_digit; int /*<<< orphan*/  bda; } ;
struct TYPE_7__ {int device_name; int /*<<< orphan*/  stat; int /*<<< orphan*/  bda; } ;
struct TYPE_11__ {TYPE_4__ key_notif; TYPE_3__ cfm_req; TYPE_2__ pin_req; TYPE_1__ auth_cmpl; } ;
typedef  TYPE_5__ esp_bt_gap_cb_param_t ;
typedef  int esp_bt_gap_cb_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
#define  ESP_BT_GAP_AUTH_CMPL_EVT 132 
#define  ESP_BT_GAP_CFM_REQ_EVT 131 
#define  ESP_BT_GAP_KEY_NOTIF_EVT 130 
#define  ESP_BT_GAP_KEY_REQ_EVT 129 
#define  ESP_BT_GAP_PIN_REQ_EVT 128 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SPP_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch (event) {
    case ESP_BT_GAP_AUTH_CMPL_EVT:{
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            FUNC1(SPP_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            FUNC4(SPP_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
        } else {
            FUNC0(SPP_TAG, "authentication failed, status:%d", param->auth_cmpl.stat);
        }
        break;
    }
    case ESP_BT_GAP_PIN_REQ_EVT:{
        FUNC1(SPP_TAG, "ESP_BT_GAP_PIN_REQ_EVT min_16_digit:%d", param->pin_req.min_16_digit);
        if (param->pin_req.min_16_digit) {
            FUNC1(SPP_TAG, "Input pin code: 0000 0000 0000 0000");
            esp_bt_pin_code_t pin_code = {0};
            FUNC2(param->pin_req.bda, true, 16, pin_code);
        } else {
            FUNC1(SPP_TAG, "Input pin code: 1234");
            esp_bt_pin_code_t pin_code;
            pin_code[0] = '1';
            pin_code[1] = '2';
            pin_code[2] = '3';
            pin_code[3] = '4';
            FUNC2(param->pin_req.bda, true, 4, pin_code);
        }
        break;
    }

#if (CONFIG_BT_SSP_ENABLED == true)
    case ESP_BT_GAP_CFM_REQ_EVT:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_CFM_REQ_EVT Please compare the numeric value: %d", param->cfm_req.num_val);
        esp_bt_gap_ssp_confirm_reply(param->cfm_req.bda, true);
        break;
    case ESP_BT_GAP_KEY_NOTIF_EVT:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_KEY_NOTIF_EVT passkey:%d", param->key_notif.passkey);
        break;
    case ESP_BT_GAP_KEY_REQ_EVT:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_KEY_REQ_EVT Please enter passkey!");
        break;
#endif

    default: {
        FUNC1(SPP_TAG, "event: %d", event);
        break;
    }
    }
    return;
}