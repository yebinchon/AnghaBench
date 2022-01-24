#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct ble_gatt_access_ctxt {int op; int /*<<< orphan*/  om; TYPE_1__* chr; } ;
typedef  int /*<<< orphan*/  ble_uuid_t ;
struct TYPE_6__ {int /*<<< orphan*/  u; } ;
struct TYPE_5__ {int /*<<< orphan*/  u; } ;
struct TYPE_4__ {int /*<<< orphan*/ * uuid; } ;

/* Variables and functions */
 int BLE_ATT_ERR_INSUFFICIENT_RES ; 
 int BLE_ATT_ERR_UNLIKELY ; 
#define  BLE_GATT_ACCESS_OP_READ_CHR 129 
#define  BLE_GATT_ACCESS_OP_WRITE_CHR 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_3__ gatt_svr_chr_sec_test_rand_uuid ; 
 TYPE_2__ gatt_svr_chr_sec_test_static_uuid ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 
 int gatt_svr_sec_test_static_val ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int
FUNC5(uint16_t conn_handle, uint16_t attr_handle,
                             struct ble_gatt_access_ctxt *ctxt,
                             void *arg)
{
    const ble_uuid_t *uuid;
    int rand_num;
    int rc;

    uuid = ctxt->chr->uuid;

    /* Determine which characteristic is being accessed by examining its
     * 128-bit UUID.
     */

    if (FUNC1(uuid, &gatt_svr_chr_sec_test_rand_uuid.u) == 0) {
        FUNC0(ctxt->op == BLE_GATT_ACCESS_OP_READ_CHR);

        /* Respond with a 32-bit random number. */
        rand_num = FUNC4();
        rc = FUNC3(ctxt->om, &rand_num, sizeof rand_num);
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    if (FUNC1(uuid, &gatt_svr_chr_sec_test_static_uuid.u) == 0) {
        switch (ctxt->op) {
        case BLE_GATT_ACCESS_OP_READ_CHR:
            rc = FUNC3(ctxt->om, &gatt_svr_sec_test_static_val,
                                sizeof gatt_svr_sec_test_static_val);
            return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;

        case BLE_GATT_ACCESS_OP_WRITE_CHR:
            rc = FUNC2(ctxt->om,
                                    sizeof gatt_svr_sec_test_static_val,
                                    sizeof gatt_svr_sec_test_static_val,
                                    &gatt_svr_sec_test_static_val, NULL);
            return rc;

        default:
            FUNC0(0);
            return BLE_ATT_ERR_UNLIKELY;
        }
    }

    /* Unknown characteristic; the nimble stack should not have called this
     * function.
     */
    FUNC0(0);
    return BLE_ATT_ERR_UNLIKELY;
}