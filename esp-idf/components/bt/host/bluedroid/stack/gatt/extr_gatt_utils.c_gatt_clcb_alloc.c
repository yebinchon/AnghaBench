
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tGATT_REG ;
typedef int tGATT_IF ;
struct TYPE_4__ {size_t clcb_idx; int * p_tcb; int * p_reg; int conn_id; int in_use; } ;
typedef TYPE_1__ tGATT_CLCB ;
typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {TYPE_1__* clcb; } ;


 size_t GATT_CL_MAX_LCB ;
 int GATT_GET_GATT_IF (int ) ;
 size_t GATT_GET_TCB_IDX (int ) ;
 int TRUE ;
 TYPE_3__ gatt_cb ;
 int * gatt_get_regcb (int ) ;
 int * gatt_get_tcb_by_idx (size_t) ;

tGATT_CLCB *gatt_clcb_alloc (UINT16 conn_id)
{
    UINT8 i = 0;
    tGATT_CLCB *p_clcb = ((void*)0);
    tGATT_IF gatt_if = GATT_GET_GATT_IF(conn_id);
    UINT8 tcb_idx = GATT_GET_TCB_IDX(conn_id);
    tGATT_TCB *p_tcb = gatt_get_tcb_by_idx(tcb_idx);
    tGATT_REG *p_reg = gatt_get_regcb(gatt_if);

    for (i = 0; i < GATT_CL_MAX_LCB; i++) {
        if (!gatt_cb.clcb[i].in_use) {
            p_clcb = &gatt_cb.clcb[i];

            p_clcb->in_use = TRUE;
            p_clcb->conn_id = conn_id;
            p_clcb->clcb_idx = i;
            p_clcb->p_reg = p_reg;
            p_clcb->p_tcb = p_tcb;
            break;
        }
    }
    return p_clcb;
}
