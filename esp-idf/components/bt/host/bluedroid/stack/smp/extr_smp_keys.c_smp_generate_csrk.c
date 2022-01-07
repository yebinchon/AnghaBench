
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_4__ {int rand_enc_proc_state; int div; int pairing_bda; } ;
typedef TYPE_1__ tSMP_CB ;
typedef scalar_t__ BOOLEAN ;


 int SMP_GEN_DIV_CSRK ;
 int SMP_TRACE_DEBUG (char*) ;
 int UNUSED (int *) ;
 scalar_t__ btm_get_local_div (int ,int *) ;
 int btsnd_hcic_ble_rand (void*) ;
 int smp_compute_csrk (TYPE_1__*,int *) ;
 int smp_rand_back (int *) ;

void smp_generate_csrk(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    UNUSED(p_data);

    BOOLEAN div_status;

    SMP_TRACE_DEBUG ("smp_generate_csrk");

    div_status = btm_get_local_div(p_cb->pairing_bda, &p_cb->div);
    if (div_status) {
        smp_compute_csrk(p_cb, ((void*)0));
    } else {
        SMP_TRACE_DEBUG ("Generate DIV for CSRK");
        p_cb->rand_enc_proc_state = SMP_GEN_DIV_CSRK;
        if (!btsnd_hcic_ble_rand((void *)smp_rand_back)) {
            smp_rand_back(((void*)0));
        }
    }
}
