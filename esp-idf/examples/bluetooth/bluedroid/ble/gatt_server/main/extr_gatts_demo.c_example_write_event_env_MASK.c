#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {scalar_t__ prepare_len; int /*<<< orphan*/ * prepare_buf; } ;
typedef  TYPE_3__ prepare_type_env_t ;
typedef  scalar_t__ esp_gatt_status_t ;
struct TYPE_10__ {int offset; int /*<<< orphan*/ * value; int /*<<< orphan*/  auth_req; int /*<<< orphan*/  handle; int /*<<< orphan*/  len; } ;
struct TYPE_13__ {TYPE_1__ attr_value; } ;
typedef  TYPE_4__ esp_gatt_rsp_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_11__ {int offset; int /*<<< orphan*/  trans_id; int /*<<< orphan*/  conn_id; int /*<<< orphan*/  len; int /*<<< orphan*/  value; int /*<<< orphan*/  handle; scalar_t__ is_prep; scalar_t__ need_rsp; } ;
struct TYPE_14__ {TYPE_2__ write; } ;
typedef  TYPE_5__ esp_ble_gatts_cb_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_GATT_AUTH_REQ_NONE ; 
 scalar_t__ ESP_GATT_INVALID_ATTR_LEN ; 
 scalar_t__ ESP_GATT_INVALID_OFFSET ; 
 scalar_t__ ESP_GATT_NO_RESOURCES ; 
 scalar_t__ ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  GATTS_TAG ; 
 int PREPARE_BUF_MAX_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(esp_gatt_if_t gatts_if, prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param){
    esp_gatt_status_t status = ESP_GATT_OK;
    if (param->write.need_rsp){
        if (param->write.is_prep){
            if (prepare_write_env->prepare_buf == NULL) {
                prepare_write_env->prepare_buf = (uint8_t *)FUNC3(PREPARE_BUF_MAX_SIZE*sizeof(uint8_t));
                prepare_write_env->prepare_len = 0;
                if (prepare_write_env->prepare_buf == NULL) {
                    FUNC0(GATTS_TAG, "Gatt_server prep no mem\n");
                    status = ESP_GATT_NO_RESOURCES;
                }
            } else {
                if(param->write.offset > PREPARE_BUF_MAX_SIZE) {
                    status = ESP_GATT_INVALID_OFFSET;
                } else if ((param->write.offset + param->write.len) > PREPARE_BUF_MAX_SIZE) {
                    status = ESP_GATT_INVALID_ATTR_LEN;
                }
            }

            esp_gatt_rsp_t *gatt_rsp = (esp_gatt_rsp_t *)FUNC3(sizeof(esp_gatt_rsp_t));
            gatt_rsp->attr_value.len = param->write.len;
            gatt_rsp->attr_value.handle = param->write.handle;
            gatt_rsp->attr_value.offset = param->write.offset;
            gatt_rsp->attr_value.auth_req = ESP_GATT_AUTH_REQ_NONE;
            FUNC4(gatt_rsp->attr_value.value, param->write.value, param->write.len);
            esp_err_t response_err = FUNC1(gatts_if, param->write.conn_id, param->write.trans_id, status, gatt_rsp);
            if (response_err != ESP_OK){
               FUNC0(GATTS_TAG, "Send response error\n");
            }
            FUNC2(gatt_rsp);
            if (status != ESP_GATT_OK){
                return;
            }
            FUNC4(prepare_write_env->prepare_buf + param->write.offset,
                   param->write.value,
                   param->write.len);
            prepare_write_env->prepare_len += param->write.len;

        }else{
            FUNC1(gatts_if, param->write.conn_id, param->write.trans_id, status, NULL);
        }
    }
}