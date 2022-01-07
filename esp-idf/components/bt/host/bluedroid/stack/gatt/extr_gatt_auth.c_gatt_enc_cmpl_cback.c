
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pending_enc_clcb; int sec_act; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_7__ {int p_clcb; } ;
typedef TYPE_2__ tGATT_PENDING_ENC_CLCB ;
typedef int tBT_TRANSPORT ;
typedef scalar_t__ tBTM_STATUS ;
typedef int UINT8 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_GetSecurityFlagsByTransport (int ,int*,int ) ;
 int BTM_SEC_FLAG_LKEY_AUTHED ;
 scalar_t__ BTM_SUCCESS ;
 int FALSE ;
 scalar_t__ GATT_SEC_ENCRYPT_MITM ;
 scalar_t__ GATT_SEC_ENC_PENDING ;
 int GATT_TRACE_DEBUG (char*) ;
 int GATT_TRACE_ERROR (char*) ;
 int TRUE ;
 int UNUSED (void*) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 size_t fixed_queue_length (int ) ;
 TYPE_1__* gatt_find_tcb_by_addr (int ,int ) ;
 scalar_t__ gatt_get_sec_act (TYPE_1__*) ;
 int gatt_sec_check_complete (int ,int ,int ) ;
 int gatt_security_check_start (int ) ;
 int osi_free (TYPE_2__*) ;

void gatt_enc_cmpl_cback(BD_ADDR bd_addr, tBT_TRANSPORT transport, void *p_ref_data, tBTM_STATUS result)
{
    tGATT_TCB *p_tcb;
    UINT8 sec_flag;
    BOOLEAN status = FALSE;
    UNUSED(p_ref_data);

    GATT_TRACE_DEBUG("gatt_enc_cmpl_cback");
    if ((p_tcb = gatt_find_tcb_by_addr(bd_addr, transport)) != ((void*)0)) {
        if (gatt_get_sec_act(p_tcb) == GATT_SEC_ENC_PENDING) {
            return;
        }
        tGATT_PENDING_ENC_CLCB *p_buf =
            (tGATT_PENDING_ENC_CLCB *)fixed_queue_dequeue(p_tcb->pending_enc_clcb, 0);
        if (p_buf != ((void*)0)) {
            if (result == BTM_SUCCESS) {
                if (gatt_get_sec_act(p_tcb) == GATT_SEC_ENCRYPT_MITM ) {
                    BTM_GetSecurityFlagsByTransport(bd_addr, &sec_flag, transport);

                    if (sec_flag & BTM_SEC_FLAG_LKEY_AUTHED) {
                        status = TRUE;
                    }
                } else {
                    status = TRUE;
                }
            }
            gatt_sec_check_complete(status , p_buf->p_clcb, p_tcb->sec_act);
            osi_free(p_buf);

            for (size_t count = fixed_queue_length(p_tcb->pending_enc_clcb);
                 count > 0; count--) {
                p_buf = (tGATT_PENDING_ENC_CLCB *)fixed_queue_dequeue(p_tcb->pending_enc_clcb, 0);
                if (p_buf != ((void*)0)) {
                    gatt_security_check_start(p_buf->p_clcb);
                    osi_free(p_buf);
                } else {
                    break;
                }
            }
        } else {
            GATT_TRACE_ERROR("Unknown operation encryption completed");
        }
    } else {
        GATT_TRACE_ERROR("enc callback for unknown bd_addr");
    }
}
