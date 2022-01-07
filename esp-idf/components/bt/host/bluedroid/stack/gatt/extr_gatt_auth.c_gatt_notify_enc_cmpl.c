
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pending_enc_clcb; } ;
typedef TYPE_3__ tGATT_TCB ;
struct TYPE_13__ {int p_clcb; } ;
typedef TYPE_4__ tGATT_PENDING_ENC_CLCB ;
typedef size_t UINT8 ;
struct TYPE_14__ {TYPE_2__* cl_rcb; } ;
struct TYPE_10__ {int (* p_enc_cmpl_cb ) (int ,int ) ;} ;
struct TYPE_11__ {int gatt_if; TYPE_1__ app_cb; scalar_t__ in_use; } ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 size_t GATT_MAX_APPS ;
 scalar_t__ GATT_SEC_ENC_PENDING ;
 int GATT_SEC_NONE ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 size_t fixed_queue_length (int ) ;
 TYPE_9__ gatt_cb ;
 TYPE_3__* gatt_find_tcb_by_addr (int ,int ) ;
 scalar_t__ gatt_get_sec_act (TYPE_3__*) ;
 int gatt_security_check_start (int ) ;
 int gatt_set_sec_act (TYPE_3__*,int ) ;
 int osi_free (TYPE_4__*) ;
 int stub1 (int ,int ) ;

void gatt_notify_enc_cmpl(BD_ADDR bd_addr)
{
    tGATT_TCB *p_tcb;
    UINT8 i = 0;

    if ((p_tcb = gatt_find_tcb_by_addr(bd_addr, BT_TRANSPORT_LE)) != ((void*)0)) {
        for (i = 0; i < GATT_MAX_APPS; i++) {
            if (gatt_cb.cl_rcb[i].in_use && gatt_cb.cl_rcb[i].app_cb.p_enc_cmpl_cb) {
                (*gatt_cb.cl_rcb[i].app_cb.p_enc_cmpl_cb)(gatt_cb.cl_rcb[i].gatt_if, bd_addr);
            }
        }

        if (gatt_get_sec_act(p_tcb) == GATT_SEC_ENC_PENDING) {
            gatt_set_sec_act(p_tcb, GATT_SEC_NONE);

            size_t count = fixed_queue_length(p_tcb->pending_enc_clcb);
            for (; count > 0; count--) {
                tGATT_PENDING_ENC_CLCB *p_buf =
                    (tGATT_PENDING_ENC_CLCB *)fixed_queue_dequeue(p_tcb->pending_enc_clcb, 0);
                if (p_buf != ((void*)0)) {
                    gatt_security_check_start(p_buf->p_clcb);
                    osi_free(p_buf);
                } else {
                    break;
                }
            }
        }
    } else {
        GATT_TRACE_DEBUG("notify GATT for encryption completion of unknown device");
    }
    return;
}
