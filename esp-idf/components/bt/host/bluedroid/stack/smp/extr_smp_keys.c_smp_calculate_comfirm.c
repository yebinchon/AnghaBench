
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSMP_STATUS ;
typedef int tSMP_ENC ;
struct TYPE_6__ {int tk; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;
typedef scalar_t__ BT_OCTET16 ;
typedef int BD_ADDR ;


 int BT_OCTET16_LEN ;
 int SMP_AUTH_CMPL_EVT ;
 int SMP_Encrypt (int ,int ,scalar_t__,int ,int *) ;
 int SMP_PAIR_FAIL_UNKNOWN ;
 int SMP_TRACE_DEBUG (char*) ;
 int SMP_TRACE_ERROR (char*) ;
 int UNUSED (int ) ;
 int smp_calculate_comfirm_cont (TYPE_1__*,int *) ;
 int smp_debug_print_nbyte_little_endian (int *,int const*,int) ;
 int smp_gen_p1_4_confirm (TYPE_1__*,scalar_t__) ;
 int smp_sm_event (TYPE_1__*,int ,int *) ;
 int smp_xor_128 (scalar_t__,scalar_t__) ;

void smp_calculate_comfirm (tSMP_CB *p_cb, BT_OCTET16 rand, BD_ADDR bda)
{
    UNUSED(bda);

    BT_OCTET16 p1;
    tSMP_ENC output;
    tSMP_STATUS status = SMP_PAIR_FAIL_UNKNOWN;

    SMP_TRACE_DEBUG ("smp_calculate_comfirm \n");

    smp_gen_p1_4_confirm(p_cb, p1);


    smp_xor_128(p1, rand);

    smp_debug_print_nbyte_little_endian ((UINT8 *)p1, (const UINT8 *)"P1' = r XOR p1", 16);


    if (!SMP_Encrypt(p_cb->tk, BT_OCTET16_LEN, p1, BT_OCTET16_LEN, &output)) {
        SMP_TRACE_ERROR("smp_generate_csrk failed");
        smp_sm_event(p_cb, SMP_AUTH_CMPL_EVT, &status);
    } else {
        smp_calculate_comfirm_cont(p_cb, &output);
    }
}
