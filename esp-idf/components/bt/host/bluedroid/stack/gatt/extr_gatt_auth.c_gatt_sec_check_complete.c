
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ operation; int counter; TYPE_2__* p_tcb; } ;
typedef TYPE_1__ tGATT_CLCB ;
typedef int UINT8 ;
struct TYPE_8__ {int pending_enc_clcb; } ;
typedef int BOOLEAN ;


 scalar_t__ GATTC_OPTYPE_READ ;
 scalar_t__ GATTC_OPTYPE_WRITE ;
 int GATT_AUTH_FAIL ;
 int GATT_SEC_NONE ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int gatt_act_read (TYPE_1__*,int ) ;
 int gatt_act_write (TYPE_1__*,int ) ;
 int gatt_end_operation (TYPE_1__*,int ,int *) ;
 int gatt_set_sec_act (TYPE_2__*,int ) ;

void gatt_sec_check_complete(BOOLEAN sec_check_ok, tGATT_CLCB *p_clcb, UINT8 sec_act)
{
    if (p_clcb && p_clcb->p_tcb &&
        fixed_queue_is_empty(p_clcb->p_tcb->pending_enc_clcb)) {
        gatt_set_sec_act(p_clcb->p_tcb, GATT_SEC_NONE);
    }

    if (!sec_check_ok) {
        gatt_end_operation(p_clcb, GATT_AUTH_FAIL, ((void*)0));
    } else if (p_clcb->operation == GATTC_OPTYPE_WRITE) {
        gatt_act_write(p_clcb, sec_act);
    } else if (p_clcb->operation == GATTC_OPTYPE_READ) {
        gatt_act_read(p_clcb, p_clcb->counter);
    }

}
