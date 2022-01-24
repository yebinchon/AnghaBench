#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct ble_gatt_access_ctxt {int /*<<< orphan*/  om; TYPE_1__* chr; } ;
struct TYPE_2__ {int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int BLE_ATT_ERR_INSUFFICIENT_RES ; 
 int BLE_ATT_ERR_UNLIKELY ; 
 scalar_t__ GATT_MANUFACTURER_NAME_UUID ; 
 scalar_t__ GATT_MODEL_NUMBER_UUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  manuf_name ; 
 int /*<<< orphan*/  model_num ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(uint16_t conn_handle, uint16_t attr_handle,
                                struct ble_gatt_access_ctxt *ctxt, void *arg)
{
    uint16_t uuid;
    int rc;

    uuid = FUNC1(ctxt->chr->uuid);

    if (uuid == GATT_MODEL_NUMBER_UUID) {
        rc = FUNC2(ctxt->om, model_num, FUNC3(model_num));
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    if (uuid == GATT_MANUFACTURER_NAME_UUID) {
        rc = FUNC2(ctxt->om, manuf_name, FUNC3(manuf_name));
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    FUNC0(0);
    return BLE_ATT_ERR_UNLIKELY;
}