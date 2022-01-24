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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t tcb_idx; int /*<<< orphan*/  peer_bda; int /*<<< orphan*/  transport; void* in_use; void* pending_ind_q; void* pending_enc_clcb; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  size_t UINT8 ;
struct TYPE_6__ {TYPE_1__* tcb; } ;
typedef  void* BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 void* FALSE ; 
 size_t GATT_INDEX_INVALID ; 
 int /*<<< orphan*/  QUEUE_SIZE_MAX ; 
 void* TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ gatt_cb ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

tGATT_TCB *FUNC5(BD_ADDR bda, tBT_TRANSPORT transport)
{
    UINT8 i = 0;
    BOOLEAN allocated = FALSE;
    tGATT_TCB    *p_tcb = NULL;

    /* search for existing tcb with matching bda    */
    i = FUNC1(bda, transport);
    /* find free tcb */
    if (i == GATT_INDEX_INVALID) {
        i = FUNC2();
        allocated = TRUE;
    }
    if (i != GATT_INDEX_INVALID) {
        p_tcb = &gatt_cb.tcb[i];

        if (allocated) {
            FUNC4(p_tcb, 0, sizeof(tGATT_TCB));
            p_tcb->pending_enc_clcb = FUNC0(QUEUE_SIZE_MAX);
            p_tcb->pending_ind_q = FUNC0(QUEUE_SIZE_MAX);
            p_tcb->in_use = TRUE;
            p_tcb->tcb_idx = i;
            p_tcb->transport = transport;
        }
        FUNC3(p_tcb->peer_bda, bda, BD_ADDR_LEN);
    }
    return p_tcb;
}