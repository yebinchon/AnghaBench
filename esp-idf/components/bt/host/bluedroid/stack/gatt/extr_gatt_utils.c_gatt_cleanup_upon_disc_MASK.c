#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * multi_rsp_q; } ;
struct TYPE_18__ {int /*<<< orphan*/  tcb_idx; TYPE_1__ sr_cmd; int /*<<< orphan*/  conf_timer_ent; int /*<<< orphan*/  ind_ack_timer_ent; } ;
typedef  TYPE_3__ tGATT_TCB ;
struct TYPE_17__ {int /*<<< orphan*/  (* p_conn_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {int /*<<< orphan*/  gatt_if; TYPE_2__ app_cb; scalar_t__ in_use; } ;
typedef  TYPE_4__ tGATT_REG ;
struct TYPE_20__ {scalar_t__ operation; int /*<<< orphan*/  clcb_idx; int /*<<< orphan*/  conn_id; int /*<<< orphan*/  rsp_timer_ent; TYPE_3__* p_tcb; scalar_t__ in_use; } ;
typedef  TYPE_5__ tGATT_CLCB ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_15__ {TYPE_4__* cl_rcb; TYPE_5__* clcb; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATTC_OPTYPE_NONE ; 
 int /*<<< orphan*/  GATT_CH_CLOSE ; 
 size_t GATT_CL_MAX_LCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATT_ERROR ; 
 size_t GATT_MAX_APPS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_14__ gatt_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  osi_free_func ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC16(BD_ADDR bda, UINT16 reason, tBT_TRANSPORT transport)
{
    tGATT_TCB       *p_tcb = NULL;
    tGATT_CLCB      *p_clcb;
    UINT8           i;
    UINT16          conn_id;
    tGATT_REG        *p_reg = NULL;


    FUNC2 ("gatt_cleanup_upon_disc ");

    if ((p_tcb = FUNC9(bda, transport)) != NULL) {
        FUNC2 ("found p_tcb ");
        FUNC13(p_tcb, GATT_CH_CLOSE);
        for (i = 0; i < GATT_CL_MAX_LCB; i ++) {
            p_clcb = &gatt_cb.clcb[i];
            if (p_clcb->in_use && p_clcb->p_tcb == p_tcb) {
                FUNC4(&p_clcb->rsp_timer_ent);
                FUNC2 ("found p_clcb conn_id=%d clcb_idx=%d", p_clcb->conn_id, p_clcb->clcb_idx);
                if (p_clcb->operation != GATTC_OPTYPE_NONE) {
                    FUNC8(p_clcb, GATT_ERROR, NULL);
                }

                FUNC6(p_clcb);

            }
        }

        FUNC3 (&p_tcb->ind_ack_timer_ent);
        FUNC3 (&p_tcb->conf_timer_ent);
        FUNC11(p_tcb);
        FUNC10(p_tcb);
        FUNC12(p_tcb);
#if (GATTS_INCLUDED)
        fixed_queue_free(p_tcb->sr_cmd.multi_rsp_q, osi_free_func);
        p_tcb->sr_cmd.multi_rsp_q = NULL;
#endif /* #if (GATTS_INCLUDED) */
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            p_reg = &gatt_cb.cl_rcb[i];
            if (p_reg->in_use && p_reg->app_cb.p_conn_cb) {
                conn_id = FUNC1(p_tcb->tcb_idx, p_reg->gatt_if);
                FUNC2 ("found p_reg tcb_idx=%d gatt_if=%d  conn_id=0x%x", p_tcb->tcb_idx, p_reg->gatt_if, conn_id);
                (*p_reg->app_cb.p_conn_cb)(p_reg->gatt_if,  bda, conn_id, FALSE, reason, transport);
            }
        }
        FUNC14(p_tcb, 0, sizeof(tGATT_TCB));

    } else {
        FUNC2 ("exit gatt_cleanup_upon_disc ");
        FUNC0();
    }
    FUNC7(bda);
}