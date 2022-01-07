
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_4__ {int local_bda; scalar_t__ rrand; int rand_enc_proc_state; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;


 int SMP_GEN_COMPARE ;
 int SMP_TRACE_DEBUG (char*) ;
 int UNUSED (int *) ;
 int smp_calculate_comfirm (TYPE_1__*,scalar_t__,int ) ;
 int smp_debug_print_nbyte_little_endian (int *,int const*,int) ;

void smp_generate_compare (tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    UNUSED(p_data);

    SMP_TRACE_DEBUG ("smp_generate_compare \n");
    p_cb->rand_enc_proc_state = SMP_GEN_COMPARE;
    smp_debug_print_nbyte_little_endian ((UINT8 *)p_cb->rrand, (const UINT8 *)"peer rand", 16);
    smp_calculate_comfirm(p_cb, p_cb->rrand, p_cb->local_bda);
}
