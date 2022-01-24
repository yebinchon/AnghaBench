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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int event; TYPE_2__* p_data; } ;
typedef  TYPE_4__ tBTA_DM_SEARCH_PARAM ;
typedef  int /*<<< orphan*/  esp_bt_uuid_t ;
struct TYPE_9__ {int num_uuids; int /*<<< orphan*/ * uuid_list; int /*<<< orphan*/  stat; int /*<<< orphan*/  bda; } ;
struct TYPE_11__ {TYPE_3__ rmt_srvcs; } ;
typedef  TYPE_5__ esp_bt_gap_cb_param_t ;
struct TYPE_7__ {int num_uuids; scalar_t__ p_uuid_list; int /*<<< orphan*/  result; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_8__ {TYPE_1__ disc_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
#define  BTA_DM_DISC_BLE_RES_EVT 130 
#define  BTA_DM_DISC_CMPL_EVT 129 
#define  BTA_DM_DISC_RES_EVT 128 
 int /*<<< orphan*/  BTA_SUCCESS ; 
 int /*<<< orphan*/  ESP_BT_GAP_RMT_SRVCS_EVT ; 
 int /*<<< orphan*/  ESP_BT_STATUS_FAIL ; 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  ESP_UUID_LEN_128 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(char *p_param)
{
    tBTA_DM_SEARCH_PARAM *p_data = (tBTA_DM_SEARCH_PARAM *)p_param;

    switch (p_data->event) {
    case BTA_DM_DISC_RES_EVT: {
        esp_bt_gap_cb_param_t param;
        esp_bt_uuid_t *uuid_list = NULL;
        FUNC1(param.rmt_srvcs.bda, p_data->p_data->disc_res.bd_addr, BD_ADDR_LEN);

        param.rmt_srvcs.stat = ESP_BT_STATUS_FAIL;
        if (p_data->p_data->disc_res.result == BTA_SUCCESS) {
            uuid_list = FUNC3(sizeof(esp_bt_uuid_t) * p_data->p_data->disc_res.num_uuids);
            if (uuid_list) {
                param.rmt_srvcs.stat = ESP_BT_STATUS_SUCCESS;
                param.rmt_srvcs.num_uuids = p_data->p_data->disc_res.num_uuids;
                param.rmt_srvcs.uuid_list = uuid_list;
                // copy UUID list
                uint8_t *i_uu = (uint8_t *)p_data->p_data->disc_res.p_uuid_list;
                esp_bt_uuid_t *o_uu = uuid_list;
                for (int i = 0; i < p_data->p_data->disc_res.num_uuids; i++, i_uu += ESP_UUID_LEN_128, o_uu++) {
                    FUNC4(o_uu, i_uu);
                }
            }
        }

        if (param.rmt_srvcs.stat == ESP_BT_STATUS_FAIL) {
            param.rmt_srvcs.num_uuids = 0;
            param.rmt_srvcs.uuid_list = NULL;
        }
        FUNC0(ESP_BT_GAP_RMT_SRVCS_EVT, &param);

        if (uuid_list) {
            FUNC2(uuid_list);
        }
    }
    break;

    case BTA_DM_DISC_BLE_RES_EVT:
    case BTA_DM_DISC_CMPL_EVT:
    default:
        break;
    }
}