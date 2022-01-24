#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  value; int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ tGATT_VALUE ;
typedef  int /*<<< orphan*/  tGATT_TCB ;
struct TYPE_10__ {scalar_t__ op_subtype; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ tGATT_CLCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_INVALID_PDU ; 
 scalar_t__ GATT_PREP_WRITE_RSP_MIN_LEN ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ GATT_WRITE ; 
 scalar_t__ GATT_WRITE_PREPARE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC8 (tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 op_code,
                                  UINT16 len, UINT8 *p_data)
{
    tGATT_VALUE  value = {0};
    UINT8        *p = p_data;

    FUNC0("value resp op_code = %s len = %d", FUNC4(op_code), len);

    if (len < GATT_PREP_WRITE_RSP_MIN_LEN) {
        FUNC1("illegal prepare write response length, discard");
        FUNC5(p_clcb, GATT_INVALID_PDU, &value);
        return;
    }

    FUNC2 (value.handle, p);
    FUNC2 (value.offset, p);

    value.len = len - 4;

    FUNC7 (value.value, p, value.len);

    if (p_clcb->op_subtype == GATT_WRITE_PREPARE) {
        p_clcb->status = GATT_SUCCESS;
        /* application should verify handle offset
           and value are matched or not */

        FUNC5(p_clcb, p_clcb->status, &value);
    } else if (p_clcb->op_subtype == GATT_WRITE ) {
        if (!FUNC3(p_tcb, p_clcb, &value)) {
            FUNC6(p_tcb, p_clcb);
        }
    }

}