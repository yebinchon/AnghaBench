
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_3__ {int rand_enc_proc_state; } ;
typedef TYPE_1__ tSMP_CB ;


 int SMP_GEN_RAND_V ;
 int SMP_TRACE_DEBUG (char*) ;
 int UNUSED (int *) ;
 int btsnd_hcic_ble_rand (void*) ;
 int smp_rand_back (int *) ;

__attribute__((used)) static void smp_generate_rand_vector (tSMP_CB *p_cb, tSMP_INT_DATA *p)
{
    UNUSED(p);



    SMP_TRACE_DEBUG ("smp_generate_rand_vector\n");
    p_cb->rand_enc_proc_state = SMP_GEN_RAND_V;
    if (!btsnd_hcic_ble_rand((void *)smp_rand_back)) {
        smp_rand_back(((void*)0));
    }
}
