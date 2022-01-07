
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
struct TYPE_4__ {int bd_addr; int transport; void* p_ref_data; int * p_callback; scalar_t__ psm; } ;
typedef TYPE_1__ tBTM_SEC_QUEUE_ENTRY ;
typedef int tBTM_SEC_CALLBACK ;
typedef int UINT8 ;
struct TYPE_5__ {int sec_pending_q; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int TRUE ;
 TYPE_3__ btm_cb ;
 int fixed_queue_enqueue (int ,TYPE_1__*,int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static BOOLEAN btm_sec_queue_encrypt_request (BD_ADDR bd_addr, tBT_TRANSPORT transport,
        tBTM_SEC_CALLBACK *p_callback, void *p_ref_data)
{
    tBTM_SEC_QUEUE_ENTRY *p_e;
    p_e = (tBTM_SEC_QUEUE_ENTRY *)osi_malloc(sizeof(tBTM_SEC_QUEUE_ENTRY) + 1);

    if (p_e) {
        p_e->psm = 0;
        p_e->p_callback = p_callback;
        p_e->p_ref_data = (void *)(p_e + 1);
        *(UINT8 *)p_e->p_ref_data = *(UINT8 *)(p_ref_data);
        p_e->transport = transport;
        memcpy(p_e->bd_addr, bd_addr, BD_ADDR_LEN);
        fixed_queue_enqueue(btm_cb.sec_pending_q, p_e, FIXED_QUEUE_MAX_TIMEOUT);
        return TRUE;
    }

    return FALSE;
}
