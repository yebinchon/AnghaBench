
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pending_enc_clcb; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_7__ {int * p_clcb; } ;
typedef TYPE_2__ tGATT_PENDING_ENC_CLCB ;
typedef int tGATT_CLCB ;
typedef int UINT16 ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_enqueue (int ,TYPE_2__*,int ) ;
 scalar_t__ osi_malloc (int ) ;

tGATT_PENDING_ENC_CLCB *gatt_add_pending_enc_channel_clcb(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb )
{
    tGATT_PENDING_ENC_CLCB *p_buf;

    GATT_TRACE_DEBUG ("gatt_add_pending_new_srv_start");
    if ((p_buf = (tGATT_PENDING_ENC_CLCB *)osi_malloc((UINT16)sizeof(tGATT_PENDING_ENC_CLCB))) != ((void*)0)) {
        GATT_TRACE_DEBUG ("enqueue a new pending encryption channel clcb");
        p_buf->p_clcb = p_clcb;
    fixed_queue_enqueue(p_tcb->pending_enc_clcb, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }
    return p_buf;
}
