#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ indicate_handle; int /*<<< orphan*/  tcb_idx; int /*<<< orphan*/  conf_timer_ent; } ;
typedef  TYPE_1__ tGATT_TCB ;
struct TYPE_10__ {scalar_t__ s_hdl; scalar_t__ e_hdl; int /*<<< orphan*/  gatt_if; scalar_t__ in_use; } ;
typedef  TYPE_2__ tGATT_SR_REG ;
struct TYPE_11__ {scalar_t__ handle; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ tGATTS_DATA ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_12__ {TYPE_2__* sr_reg; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GATTS_REQ_TYPE_CONF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ GATT_MAX_SR_PROFILES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_8__ gatt_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__) ; 

void FUNC7(tGATT_TCB *p_tcb, UINT8 op_code)
{
    UINT16          handle = p_tcb->indicate_handle;
    UINT32          trans_id;
    UINT8           i;
    tGATT_SR_REG    *p_rcb = gatt_cb.sr_reg;
    BOOLEAN         continue_processing;
    UINT16          conn_id;

    FUNC3 (&p_tcb->conf_timer_ent);
    if (FUNC1(handle)) {
        p_tcb->indicate_handle = 0;
        continue_processing = FUNC6(p_tcb, handle);

        if (continue_processing) {
            for (i = 0; i < GATT_MAX_SR_PROFILES; i ++, p_rcb ++) {
                if (p_rcb->in_use && p_rcb->s_hdl <= handle && p_rcb->e_hdl >= handle) {
                    trans_id = FUNC4(p_tcb, op_code, handle);
                    conn_id = FUNC0(p_tcb->tcb_idx, p_rcb->gatt_if);
                    tGATTS_DATA p_data = {0};
                    p_data.handle = handle;
                    FUNC5(conn_id,
                                              trans_id, GATTS_REQ_TYPE_CONF, &p_data);
                }
            }
        }
    } else {
        FUNC2("unexpected handle value confirmation");
    }
}