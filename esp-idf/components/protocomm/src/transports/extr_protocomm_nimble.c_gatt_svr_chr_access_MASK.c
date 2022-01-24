#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct ble_gatt_access_ctxt {int op; int /*<<< orphan*/  om; TYPE_1__* chr; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  pc_ble; } ;
struct TYPE_3__ {int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int BLE_ATT_ERR_INSUFFICIENT_RES ; 
 int BLE_ATT_ERR_INVALID_PDU ; 
 int BLE_ATT_ERR_UNLIKELY ; 
#define  BLE_GATT_ACCESS_OP_READ_CHR 129 
#define  BLE_GATT_ACCESS_OP_WRITE_CHR 128 
 int BLE_UUID128_VAL_LENGTH ; 
 int BLE_UUID_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* protoble_internal ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(uint16_t conn_handle, uint16_t attr_handle,
                    struct ble_gatt_access_ctxt *ctxt,
                    void *arg)
{
    int rc;
    esp_err_t ret;
    char buf[BLE_UUID_STR_LEN];
    ssize_t temp_outlen = 0;
    uint8_t *temp_outbuf = NULL;
    uint8_t *uuid = NULL;
    uint8_t *data_buf = NULL;
    uint16_t data_len = 0;
    uint16_t data_buf_len = 0;

    switch (ctxt->op) {
    case BLE_GATT_ACCESS_OP_READ_CHR:
        FUNC0(TAG, "Read attempeted for Characterstic UUID = %s, attr_handle = %d",
                 FUNC5(ctxt->chr->uuid, buf), attr_handle);

        rc = FUNC10(attr_handle, &temp_outlen,
                                             &temp_outbuf);
        if (rc != 0) {
            FUNC1(TAG, "Failed to read characteristic with attr_handle = %d", attr_handle);
            return rc;
        }

        rc = FUNC8(ctxt->om, temp_outbuf, temp_outlen);
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;

    case BLE_GATT_ACCESS_OP_WRITE_CHR:
        uuid = (uint8_t *) FUNC6(BLE_UUID128_VAL_LENGTH, sizeof(uint8_t));
        if (!uuid) {
            FUNC1(TAG, "Error allocating memory for 128 bit UUID");
            return BLE_ATT_ERR_INSUFFICIENT_RES;
        }

        rc = FUNC4(ctxt->chr->uuid, uuid);
        if (rc != 0) {
            FUNC7(uuid);
            FUNC1(TAG, "Error fetching Characteristic UUID128");
            return rc;
        }

        /* Save the length of entire data */
        data_len = FUNC2(ctxt->om);
        FUNC0(TAG, "Write attempt for uuid = %s, attr_handle = %d, data_len = %d",
                 FUNC5(ctxt->chr->uuid, buf), attr_handle, data_len);

        data_buf = FUNC6(1, data_len);
        if (data_buf == NULL) {
            FUNC1(TAG, "Error allocating memory for characteristic value");
            return BLE_ATT_ERR_INSUFFICIENT_RES;
        }

        rc = FUNC3(ctxt->om, data_buf, data_len, &data_buf_len);
        if (rc != 0) {
            FUNC1(TAG, "Error getting data from memory buffers");
            return BLE_ATT_ERR_UNLIKELY;
        }

        ret = FUNC9(protoble_internal->pc_ble,
                                   FUNC12(uuid),
                                   conn_handle,
                                   data_buf,
                                   data_buf_len,
                                   &temp_outbuf, &temp_outlen);
        /* Release the 16 bytes allocated for uuid*/
        FUNC7(uuid);
        FUNC7(data_buf);
        if (ret == ESP_OK) {

            /* Save data address and length outbuf and outlen internally */
            rc = FUNC11(attr_handle, temp_outlen,
                                                 temp_outbuf);
            if (rc != 0) {
                FUNC1(TAG, "Failed to set outbuf for characteristic with attr_handle = %d",
                         attr_handle);
                FUNC7(temp_outbuf);
            }

            return rc;
        } else {
            FUNC1(TAG, "Invalid content received, killing connection");
            return BLE_ATT_ERR_INVALID_PDU;
        }

    default:
        return BLE_ATT_ERR_UNLIKELY;
    }
}