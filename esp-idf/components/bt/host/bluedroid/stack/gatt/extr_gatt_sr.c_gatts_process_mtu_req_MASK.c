#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ att_lcid; scalar_t__ payload_size; int /*<<< orphan*/  tcb_idx; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_SR_MSG ;
typedef  int /*<<< orphan*/  tGATTS_DATA ;
typedef  size_t UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_12__ {TYPE_1__* cl_rcb; } ;
struct TYPE_11__ {scalar_t__ local_mtu; } ;
struct TYPE_9__ {int /*<<< orphan*/  gatt_if; scalar_t__ in_use; } ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GATTS_REQ_TYPE_MTU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GATT_DEF_BLE_MTU_SIZE ; 
 int /*<<< orphan*/  GATT_INVALID_PDU ; 
 size_t GATT_MAX_APPS ; 
 scalar_t__ GATT_MTU_REQ_MIN_LEN ; 
 int /*<<< orphan*/  GATT_REQ_MTU ; 
 int /*<<< orphan*/  GATT_REQ_NOT_SUPPORTED ; 
 int /*<<< orphan*/  GATT_RSP_MTU ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ L2CAP_ATT_CID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_6__ gatt_cb ; 
 TYPE_5__ gatt_default ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (tGATT_TCB *p_tcb, UINT16 len, UINT8 *p_data)
{
    UINT16        mtu = 0;
    UINT8         *p = p_data, i;
    BT_HDR        *p_buf;
    UINT16   conn_id;

    /* BR/EDR conenction, send error response */
    if (p_tcb->att_lcid != L2CAP_ATT_CID) {
        FUNC5 (p_tcb, GATT_REQ_NOT_SUPPORTED, GATT_REQ_MTU, 0, FALSE);
    } else if (len < GATT_MTU_REQ_MIN_LEN) {
        FUNC1("invalid MTU request PDU received.\n");
        FUNC5 (p_tcb, GATT_INVALID_PDU, GATT_REQ_MTU, 0, FALSE);
    } else {
        FUNC2 (mtu, p);
        /* mtu must be greater than default MTU which is 23/48 */
        if (mtu < GATT_DEF_BLE_MTU_SIZE) {
            p_tcb->payload_size = GATT_DEF_BLE_MTU_SIZE;
        } else if (mtu > gatt_default.local_mtu) {
            p_tcb->payload_size = gatt_default.local_mtu;
        } else {
            p_tcb->payload_size = mtu;
        }

        /* host will set packet data length to 251 automatically if remote device support set packet data length,
            so l2cble_set_fixed_channel_tx_data_length() is not necessary.
            l2cble_set_fixed_channel_tx_data_length(p_tcb->peer_bda, L2CAP_ATT_CID, p_tcb->payload_size);
        */

        if ((p_buf = FUNC3(p_tcb, GATT_RSP_MTU, (tGATT_SR_MSG *) &p_tcb->payload_size)) != NULL) {
            FUNC4 (p_tcb, p_buf);

            /* Notify all registered applicaiton with new MTU size. Us a transaction ID */
            /* of 0, as no response is allowed from applcations                    */

            for (i = 0; i < GATT_MAX_APPS; i ++) {
                if (gatt_cb.cl_rcb[i].in_use ) {
                    conn_id = FUNC0(p_tcb->tcb_idx, gatt_cb.cl_rcb[i].gatt_if);
                    FUNC6(conn_id, 0, GATTS_REQ_TYPE_MTU,
                                              (tGATTS_DATA *)&p_tcb->payload_size);
                }
            }

        }
    }
}