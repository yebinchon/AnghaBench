
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t tcb_idx; int peer_bda; int transport; void* in_use; void* pending_ind_q; void* pending_enc_clcb; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tBT_TRANSPORT ;
typedef size_t UINT8 ;
struct TYPE_6__ {TYPE_1__* tcb; } ;
typedef void* BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 void* FALSE ;
 size_t GATT_INDEX_INVALID ;
 int QUEUE_SIZE_MAX ;
 void* TRUE ;
 void* fixed_queue_new (int ) ;
 TYPE_3__ gatt_cb ;
 size_t gatt_find_i_tcb_by_addr (int ,int ) ;
 size_t gatt_find_i_tcb_free () ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

tGATT_TCB *gatt_allocate_tcb_by_bdaddr(BD_ADDR bda, tBT_TRANSPORT transport)
{
    UINT8 i = 0;
    BOOLEAN allocated = FALSE;
    tGATT_TCB *p_tcb = ((void*)0);


    i = gatt_find_i_tcb_by_addr(bda, transport);

    if (i == GATT_INDEX_INVALID) {
        i = gatt_find_i_tcb_free();
        allocated = TRUE;
    }
    if (i != GATT_INDEX_INVALID) {
        p_tcb = &gatt_cb.tcb[i];

        if (allocated) {
            memset(p_tcb, 0, sizeof(tGATT_TCB));
            p_tcb->pending_enc_clcb = fixed_queue_new(QUEUE_SIZE_MAX);
            p_tcb->pending_ind_q = fixed_queue_new(QUEUE_SIZE_MAX);
            p_tcb->in_use = TRUE;
            p_tcb->tcb_idx = i;
            p_tcb->transport = transport;
        }
        memcpy(p_tcb->peer_bda, bda, BD_ADDR_LEN);
    }
    return p_tcb;
}
