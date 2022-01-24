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
typedef  int /*<<< orphan*/  uint16_t ;
struct ble_gatt_access_ctxt {scalar_t__ op; int /*<<< orphan*/  om; TYPE_1__* dsc; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int BLE_ATT_ERR_INSUFFICIENT_RES ; 
 int BLE_ATT_ERR_UNLIKELY ; 
 scalar_t__ BLE_GATT_ACCESS_OP_READ_DSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(uint16_t conn_handle, uint16_t attr_handle, struct
                    ble_gatt_access_ctxt *ctxt, void *arg)
{
    if (ctxt->op != BLE_GATT_ACCESS_OP_READ_DSC) {
        FUNC0(TAG, "Invalid operation on Read-only Descriptor");
        return BLE_ATT_ERR_UNLIKELY;
    }

    int rc;
    char *temp_outbuf = FUNC3(ctxt->dsc->arg);
    if (temp_outbuf == NULL) {
        FUNC0(TAG, "Error duplicating user description of characteristic");
        return BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    ssize_t temp_outlen = FUNC4(temp_outbuf);
    rc = FUNC2(ctxt->om, temp_outbuf, temp_outlen);
    FUNC1(temp_outbuf);
    return rc;
}