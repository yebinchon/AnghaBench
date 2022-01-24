#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  esp_gatts_cb_event_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  trans_id; int /*<<< orphan*/  handle; int /*<<< orphan*/  len; int /*<<< orphan*/  value; scalar_t__ is_prep; } ;
struct TYPE_7__ {TYPE_1__ write; } ;
typedef  TYPE_2__ esp_ble_gatts_cb_param_t ;
struct TYPE_8__ {int /*<<< orphan*/  pc_ble; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_GATT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_4__* protoble_internal ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    uint8_t *outbuf = NULL;
    ssize_t outlen = 0;
    esp_err_t ret;

    FUNC0(TAG, "Inside write with session - %d on attr handle = %d \nlen = %d, is_prep = %d",
             param->write.conn_id, param->write.handle, param->write.len, param->write.is_prep);

    if (param->write.is_prep) {
        ret = FUNC8(gatts_if, param);
        if (ret != ESP_OK) {
            FUNC1(TAG, "Error appending to prepare buffer");
        }
        return;
    } else {
        FUNC0(TAG, "is_prep not set");
    }

    ret = FUNC9(protoble_internal->pc_ble,
                               FUNC6(param->write.handle),
                               param->write.conn_id,
                               param->write.value,
                               param->write.len,
                               &outbuf, &outlen);
    if (ret == ESP_OK) {
        ret = FUNC4(param->write.handle, outlen, outbuf);
        if (ret != ESP_OK) {
            FUNC1(TAG, "Failed to set the session attribute value");
        }
        ret = FUNC3(gatts_if, param->write.conn_id,
                                          param->write.trans_id, ESP_GATT_OK, NULL);
        if (ret != ESP_OK) {
            FUNC1(TAG, "Send response error in write");
        }
        FUNC7("Response from  write", outbuf, outlen);

    } else {
        FUNC1(TAG, "Invalid content received, killing connection");
        FUNC2(gatts_if, param->write.conn_id);
    }
    if (outbuf) {
        FUNC5(outbuf);
    }
}