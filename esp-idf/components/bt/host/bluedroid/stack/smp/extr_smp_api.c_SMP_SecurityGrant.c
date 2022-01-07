
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {scalar_t__ br_state; scalar_t__ cb_evt; scalar_t__ state; int pairing_bda; scalar_t__ smp_over_br; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int SMP_API_SEC_GRANT_EVT ;
 int SMP_BR_API_SEC_GRANT_EVT ;
 scalar_t__ SMP_BR_STATE_WAIT_APP_RSP ;
 scalar_t__ SMP_SEC_REQUEST_EVT ;
 scalar_t__ SMP_STATE_WAIT_APP_RSP ;
 int SMP_TRACE_EVENT (char*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int smp_br_state_machine_event (TYPE_1__*,int ,int *) ;
 TYPE_1__ smp_cb ;
 int smp_sm_event (TYPE_1__*,int ,int *) ;

void SMP_SecurityGrant(BD_ADDR bd_addr, UINT8 res)
{
    SMP_TRACE_EVENT ("SMP_SecurityGrant ");


    if (smp_cb.smp_over_br) {
        if (smp_cb.br_state != SMP_BR_STATE_WAIT_APP_RSP ||
                smp_cb.cb_evt != SMP_SEC_REQUEST_EVT ||
                memcmp (smp_cb.pairing_bda, bd_addr, BD_ADDR_LEN)) {
            return;
        }



        smp_cb.cb_evt = 0;
        smp_br_state_machine_event(&smp_cb, SMP_BR_API_SEC_GRANT_EVT, &res);
        return;
    }


    if (smp_cb.state != SMP_STATE_WAIT_APP_RSP ||
            smp_cb.cb_evt != SMP_SEC_REQUEST_EVT ||
            memcmp (smp_cb.pairing_bda, bd_addr, BD_ADDR_LEN)) {
        return;
    }


    smp_cb.cb_evt = 0;
    smp_sm_event(&smp_cb, SMP_API_SEC_GRANT_EVT, &res);
}
