#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tcb_idx; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
struct TYPE_14__ {int /*<<< orphan*/  gatt_if; } ;
typedef  TYPE_3__ tGATT_SR_REG ;
struct TYPE_12__ {void* need_rsp; void* offset; void* is_long; void* handle; } ;
struct TYPE_15__ {TYPE_1__ read_req; } ;
typedef  TYPE_4__ tGATTS_DATA ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  void* UINT16 ;
struct TYPE_11__ {TYPE_3__* sr_reg; } ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GATTS_REQ_TYPE_READ ; 
 int /*<<< orphan*/  GATT_BUSY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATT_PENDING ; 
 size_t GATT_REQ_READ_BLOB ; 
 int /*<<< orphan*/  GATT_STACK_RSP ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_10__ gatt_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,void*) ; 
 size_t FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tGATT_STATUS FUNC6(tGATT_TCB *p_tcb, UINT8 op_code,
        UINT16 handle, UINT16 offset, UINT32 trans_id, BOOLEAN need_rsp)
{
    tGATTS_DATA   sr_data;
    UINT8       i_rcb;
    tGATT_SR_REG *p_sreg;
    UINT16   conn_id;

    i_rcb = FUNC2(handle);
    p_sreg = &gatt_cb.sr_reg[i_rcb];
    conn_id = FUNC0(p_tcb->tcb_idx, p_sreg->gatt_if);

    if (trans_id == 0) {
        trans_id = FUNC1(p_tcb, op_code, handle);
        FUNC4(p_tcb, p_sreg->gatt_if, TRUE, TRUE);
    }

    if (trans_id != 0 ) {
        FUNC5(&sr_data, 0, sizeof(tGATTS_DATA));

        sr_data.read_req.handle = handle;
        sr_data.read_req.is_long = (BOOLEAN)(op_code == GATT_REQ_READ_BLOB);
        sr_data.read_req.offset = offset;
        sr_data.read_req.need_rsp = need_rsp;

        FUNC3(conn_id,
                                  trans_id, GATTS_REQ_TYPE_READ, &sr_data);
        
        if (need_rsp) {
            return (tGATT_STATUS) GATT_PENDING;
        }
        else{
            return (tGATT_STATUS) GATT_STACK_RSP;
        }
    } else {
        return (tGATT_STATUS) GATT_BUSY;    /* max pending command, application error */
    }

}