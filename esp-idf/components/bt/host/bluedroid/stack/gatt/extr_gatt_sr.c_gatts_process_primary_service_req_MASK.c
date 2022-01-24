#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ payload_size; } ;
typedef  TYPE_3__ tGATT_TCB ;
struct TYPE_16__ {int /*<<< orphan*/  uuid16; } ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {TYPE_2__ uu; TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ tBT_UUID ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ GATT_INVALID_PDU ; 
 scalar_t__ GATT_NOT_FOUND ; 
 scalar_t__ GATT_NO_RESOURCES ; 
 scalar_t__ GATT_REQ_FIND_TYPE_VALUE ; 
 scalar_t__ GATT_REQ_READ_BY_GRP_TYPE ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ GATT_UNSUPPORT_GRP_TYPE ; 
 int /*<<< orphan*/  GATT_UUID_PRI_SERVICE ; 
 scalar_t__ L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  LEN_UUID_16 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,TYPE_4__) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_4__,TYPE_4__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *,scalar_t__**,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(tGATT_TCB *p_tcb, UINT8 op_code, UINT16 len, UINT8 *p_data)
{
    UINT8           reason = GATT_INVALID_PDU;
    UINT16          s_hdl = 0, e_hdl = 0;
    tBT_UUID        uuid, value, primary_service = {LEN_UUID_16, {GATT_UUID_PRI_SERVICE}};
    BT_HDR          *p_msg = NULL;
    UINT16          msg_len = (UINT16)(sizeof(BT_HDR) + p_tcb->payload_size + L2CAP_MIN_OFFSET);

    FUNC8 (&value, 0, sizeof(tBT_UUID));
    reason = FUNC7(op_code, &len, &p_data, &uuid, &s_hdl, &e_hdl);

    if (reason == GATT_SUCCESS) {
        if (FUNC6(uuid, primary_service)) {
            if (op_code == GATT_REQ_FIND_TYPE_VALUE) {
                if (FUNC4(&value, len, &p_data) == FALSE) {
                    reason = GATT_INVALID_PDU;
                }
            }

            if (reason == GATT_SUCCESS) {
                if ((p_msg =  (BT_HDR *)FUNC9(msg_len)) == NULL) {
                    FUNC1("gatts_process_primary_service_req failed. no resources.");
                    reason = GATT_NO_RESOURCES;
                } else {
                    reason = FUNC3 (p_msg, p_tcb, op_code, s_hdl, e_hdl, p_data, value);
                }
            }
        } else {
            if (op_code == GATT_REQ_READ_BY_GRP_TYPE) {
                reason = GATT_UNSUPPORT_GRP_TYPE;
                FUNC0("unexpected ReadByGrpType Group: 0x%04x", uuid.uu.uuid16);
            } else {
                /* we do not support ReadByTypeValue with any non-primamry_service type */
                reason = GATT_NOT_FOUND;
                FUNC0("unexpected ReadByTypeValue type: 0x%04x", uuid.uu.uuid16);
            }
        }
    }

    if (reason != GATT_SUCCESS) {
        if (p_msg) {
            FUNC10(p_msg);
        }
        FUNC5 (p_tcb, reason, op_code, s_hdl, FALSE);
    } else {
        FUNC2(p_tcb, p_msg);
    }

}