#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char* esp_bt_pin_code_t ;
struct TYPE_14__ {int /*<<< orphan*/  passkey; } ;
struct TYPE_13__ {int /*<<< orphan*/  bda; int /*<<< orphan*/  num_val; } ;
struct TYPE_12__ {int /*<<< orphan*/  bda; int /*<<< orphan*/  min_16_digit; } ;
struct TYPE_11__ {int /*<<< orphan*/  stat; int /*<<< orphan*/  bda; int /*<<< orphan*/  device_name; } ;
struct TYPE_10__ {int num_prop; int /*<<< orphan*/  bda; TYPE_1__* prop; } ;
struct TYPE_15__ {TYPE_6__ key_notif; TYPE_5__ cfm_req; TYPE_4__ pin_req; TYPE_3__ auth_cmpl; TYPE_2__ disc_res; } ;
typedef  TYPE_7__ esp_bt_gap_cb_param_t ;
typedef  int esp_bt_gap_cb_event_t ;
struct TYPE_9__ {int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
#define  ESP_BT_GAP_AUTH_CMPL_EVT 136 
#define  ESP_BT_GAP_CFM_REQ_EVT 135 
 int /*<<< orphan*/  ESP_BT_GAP_DEV_PROP_EIR ; 
#define  ESP_BT_GAP_DISC_RES_EVT 134 
#define  ESP_BT_GAP_DISC_STATE_CHANGED_EVT 133 
#define  ESP_BT_GAP_KEY_NOTIF_EVT 132 
#define  ESP_BT_GAP_KEY_REQ_EVT 131 
#define  ESP_BT_GAP_PIN_REQ_EVT 130 
#define  ESP_BT_GAP_RMT_SRVCS_EVT 129 
#define  ESP_BT_GAP_RMT_SRVC_REC_EVT 128 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SPP_TAG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peer_bd_addr ; 
 int /*<<< orphan*/  peer_bdname ; 
 int /*<<< orphan*/  peer_bdname_len ; 
 int /*<<< orphan*/  remote_device_name ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch(event){
    case ESP_BT_GAP_DISC_RES_EVT:
        FUNC1(SPP_TAG, "ESP_BT_GAP_DISC_RES_EVT");
        FUNC6(SPP_TAG, param->disc_res.bda, ESP_BD_ADDR_LEN);
        for (int i = 0; i < param->disc_res.num_prop; i++){
            if (param->disc_res.prop[i].type == ESP_BT_GAP_DEV_PROP_EIR
                && FUNC8(param->disc_res.prop[i].val, peer_bdname, &peer_bdname_len)){
                FUNC5(SPP_TAG, peer_bdname, peer_bdname_len);
                if (FUNC10(remote_device_name) == peer_bdname_len
                    && FUNC11(peer_bdname, remote_device_name, peer_bdname_len) == 0) {
                    FUNC9(peer_bd_addr, param->disc_res.bda, ESP_BD_ADDR_LEN);
                    FUNC7(peer_bd_addr);
                    FUNC2();
                }
            }
        }
        break;
    case ESP_BT_GAP_DISC_STATE_CHANGED_EVT:
        FUNC1(SPP_TAG, "ESP_BT_GAP_DISC_STATE_CHANGED_EVT");
        break;
    case ESP_BT_GAP_RMT_SRVCS_EVT:
        FUNC1(SPP_TAG, "ESP_BT_GAP_RMT_SRVCS_EVT");
        break;
    case ESP_BT_GAP_RMT_SRVC_REC_EVT:
        FUNC1(SPP_TAG, "ESP_BT_GAP_RMT_SRVC_REC_EVT");
        break;
    case ESP_BT_GAP_AUTH_CMPL_EVT:{
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            FUNC1(SPP_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            FUNC6(SPP_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
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
            FUNC3(param->pin_req.bda, true, 16, pin_code);
        } else {
            FUNC1(SPP_TAG, "Input pin code: 1234");
            esp_bt_pin_code_t pin_code;
            pin_code[0] = '1';
            pin_code[1] = '2';
            pin_code[2] = '3';
            pin_code[3] = '4';
            FUNC3(param->pin_req.bda, true, 4, pin_code);
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

    default:
        break;
    }
}