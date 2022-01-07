
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; void* is_pair_cancel; int pairing_bda; int flags; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;
typedef void* BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_EVENT (char*,scalar_t__,int ) ;
 void* FALSE ;
 int SMP_AUTH_CMPL_EVT ;
 int SMP_PAIR_FAIL_UNKNOWN ;
 scalar_t__ SMP_STATE_IDLE ;
 int SMP_TRACE_DEBUG (char*) ;
 void* TRUE ;
 int memcmp (int ,int ,int ) ;
 TYPE_1__ smp_cb ;
 int smp_sm_event (TYPE_1__*,int ,int *) ;

BOOLEAN SMP_PairCancel (BD_ADDR bd_addr)
{
    tSMP_CB *p_cb = &smp_cb;
    UINT8 err_code = SMP_PAIR_FAIL_UNKNOWN;
    BOOLEAN status = FALSE;

    BTM_TRACE_EVENT ("SMP_CancelPair state=%d flag=0x%x ", p_cb->state, p_cb->flags);
    if ( (p_cb->state != SMP_STATE_IDLE) &&
            (!memcmp (p_cb->pairing_bda, bd_addr, BD_ADDR_LEN)) ) {
        p_cb->is_pair_cancel = TRUE;
        SMP_TRACE_DEBUG("Cancel Pairing: set fail reason Unknown");
        smp_sm_event(p_cb, SMP_AUTH_CMPL_EVT, &err_code);
        status = TRUE;
    }

    return status;
}
