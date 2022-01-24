#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  esp_gatts_cb_event_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ exec_write_flag; int /*<<< orphan*/  trans_id; int /*<<< orphan*/  conn_id; } ;
struct TYPE_7__ {TYPE_1__ exec_write; } ;
typedef  TYPE_2__ esp_ble_gatts_cb_param_t ;
struct TYPE_9__ {scalar_t__ prepare_len; int /*<<< orphan*/ * prepare_buf; int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  pc_ble; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_GATT_OK ; 
 scalar_t__ ESP_GATT_PREP_WRITE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ prepare_write_env ; 
 TYPE_4__* protoble_internal ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    esp_err_t err;
    uint8_t *outbuf = NULL;
    ssize_t outlen = 0;
    FUNC0(TAG, "Inside exec_write w/ session - %d", param->exec_write.conn_id);

    if ((param->exec_write.exec_write_flag == ESP_GATT_PREP_WRITE_EXEC)
            &&
            prepare_write_env.prepare_buf) {
        err = FUNC8(protoble_internal->pc_ble,
                                   FUNC6(prepare_write_env.handle),
                                   param->exec_write.conn_id,
                                   prepare_write_env.prepare_buf,
                                   prepare_write_env.prepare_len,
                                   &outbuf, &outlen);

        if (err != ESP_OK) {
            FUNC1(TAG, "Invalid content received, killing connection");
            FUNC2(gatts_if, param->exec_write.conn_id);
        } else {
            FUNC7("Response from exec write", outbuf, outlen);
            FUNC4(prepare_write_env.handle, outlen, outbuf);
        }
    }
    if (prepare_write_env.prepare_buf) {
        FUNC5(prepare_write_env.prepare_buf);
        prepare_write_env.prepare_buf = NULL;
        prepare_write_env.prepare_len = 0;
    }

    err = FUNC3(gatts_if, param->exec_write.conn_id, param->exec_write.trans_id, ESP_GATT_OK, NULL);
    if (err != ESP_OK) {
        FUNC1(TAG, "Send response error in exec write");
    }
    if (outbuf) {
        FUNC5(outbuf);
    }
}