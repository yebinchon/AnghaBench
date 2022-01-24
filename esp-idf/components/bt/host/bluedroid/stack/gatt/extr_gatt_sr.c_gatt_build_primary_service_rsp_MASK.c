#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ payload_size; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
struct TYPE_18__ {scalar_t__ s_hdl; scalar_t__ type; int e_hdl; int /*<<< orphan*/  p_db; scalar_t__ in_use; } ;
typedef  TYPE_2__ tGATT_SR_REG ;
struct TYPE_19__ {TYPE_4__* p_last; TYPE_4__* p_last_primary; TYPE_4__* p_first; } ;
typedef  TYPE_3__ tGATT_SRV_LIST_INFO ;
struct TYPE_20__ {struct TYPE_20__* p_next; int /*<<< orphan*/  i_sreg; } ;
typedef  TYPE_4__ tGATT_SRV_LIST_ELEM ;
struct TYPE_21__ {scalar_t__ len; } ;
typedef  TYPE_5__ tBT_UUID ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_22__ {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_16__ {TYPE_3__ srv_list_info; } ;
typedef  TYPE_6__ BT_HDR ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATT_NOT_FOUND ; 
 scalar_t__ GATT_REQ_FIND_TYPE_VALUE ; 
 scalar_t__ GATT_REQ_READ_BY_GRP_TYPE ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ GATT_UUID_PRI_SERVICE ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__**,TYPE_5__) ; 
 TYPE_10__ gatt_cb ; 
 scalar_t__ FUNC5 (TYPE_5__,TYPE_5__) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tGATT_STATUS FUNC7 (BT_HDR *p_msg, tGATT_TCB *p_tcb,
        UINT8 op_code, UINT16 s_hdl,
        UINT16 e_hdl, UINT8 *p_data, tBT_UUID value)
{
    tGATT_STATUS    status = GATT_NOT_FOUND;
    UINT8           handle_len = 4, *p ;
    tGATT_SR_REG    *p_rcb;
    tGATT_SRV_LIST_INFO *p_list = &gatt_cb.srv_list_info;
    tGATT_SRV_LIST_ELEM  *p_srv = NULL;
    tBT_UUID       *p_uuid;

    FUNC3(p_data);

    p = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;

    p_srv = p_list->p_first;

    while (p_srv) {
        p_rcb = FUNC0(p_srv->i_sreg);

        if (p_rcb->in_use &&
                p_rcb->s_hdl >= s_hdl &&
                p_rcb->s_hdl <= e_hdl &&
                p_rcb->type == GATT_UUID_PRI_SERVICE) {
            if ((p_uuid = FUNC6 (p_rcb->p_db)) != NULL) {
                if (op_code == GATT_REQ_READ_BY_GRP_TYPE) {
                    handle_len = 4 + p_uuid->len;
                }

                /* get the length byte in the repsonse */
                if (p_msg->offset == 0) {
                    *p ++ = op_code + 1;
                    p_msg->len ++;
                    p_msg->offset = handle_len;

                    if (op_code == GATT_REQ_READ_BY_GRP_TYPE) {
                        *p ++ =  (UINT8)p_msg->offset; /* length byte */
                        p_msg->len ++;
                    }
                }

                if (p_msg->len + p_msg->offset <= p_tcb->payload_size &&
                        handle_len == p_msg->offset) {
                    if (op_code != GATT_REQ_FIND_TYPE_VALUE ||
                            FUNC5(value, *p_uuid)) {
                        FUNC2(p, p_rcb->s_hdl);

                        if (p_list->p_last_primary == p_srv &&
                                p_list->p_last_primary == p_list->p_last) {
                            FUNC1("Use 0xFFFF for the last primary attribute");
                            FUNC2(p, 0xFFFF); /* see GATT ERRATA 4065, 4063, ATT ERRATA 4062 */
                        } else {
                            FUNC2(p, p_rcb->e_hdl);
                        }

                        if (op_code == GATT_REQ_READ_BY_GRP_TYPE) {
                            FUNC4(&p, *p_uuid);
                        }

                        status = GATT_SUCCESS;
                        p_msg->len += p_msg->offset;
                    }
                } else {
                    break;
                }
            }
        }
        p_srv = p_srv->p_next;
    }
    p_msg->offset = L2CAP_MIN_OFFSET;

    return status;
}