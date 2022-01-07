
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tSMP_STATUS ;
struct TYPE_12__ {int * param_buf; } ;
typedef TYPE_1__ tSMP_ENC ;
struct TYPE_13__ {int rand_enc_proc_state; int tk; } ;
typedef TYPE_2__ tSMP_CB ;
typedef int UINT8 ;
typedef scalar_t__ BT_OCTET16 ;


 int BT_OCTET16_LEN ;
 int SMP_AUTH_CMPL_EVT ;
 int SMP_Encrypt (int ,int ,scalar_t__,int ,TYPE_1__*) ;


 int SMP_PAIR_FAIL_UNKNOWN ;
 int SMP_TRACE_DEBUG (char*,...) ;
 int SMP_TRACE_ERROR (char*) ;
 int smp_debug_print_nbyte_little_endian (int *,int const*,int) ;
 int smp_gen_p2_4_confirm (TYPE_2__*,scalar_t__) ;
 int smp_process_compare (TYPE_2__*,TYPE_1__*) ;
 int smp_process_confirm (TYPE_2__*,TYPE_1__*) ;
 int smp_sm_event (TYPE_2__*,int ,int *) ;
 int smp_xor_128 (scalar_t__,int *) ;

__attribute__((used)) static void smp_calculate_comfirm_cont(tSMP_CB *p_cb, tSMP_ENC *p)
{
    BT_OCTET16 p2;
    tSMP_ENC output;
    tSMP_STATUS status = SMP_PAIR_FAIL_UNKNOWN;

    SMP_TRACE_DEBUG ("smp_calculate_comfirm_cont \n");

    SMP_TRACE_DEBUG("Confirm step 1 p1' = e(k, r XOR p1)  Generated\n");
    smp_debug_print_nbyte_little_endian (p->param_buf, (const UINT8 *)"C1", 16);


    smp_gen_p2_4_confirm(p_cb, p2);


    smp_xor_128(p2, p->param_buf);
    smp_debug_print_nbyte_little_endian ((UINT8 *)p2, (const UINT8 *)"p2' = C1 xor p2", 16);


    if (!SMP_Encrypt(p_cb->tk, BT_OCTET16_LEN, p2, BT_OCTET16_LEN, &output)) {
        SMP_TRACE_ERROR("smp_calculate_comfirm_cont failed\n");
        smp_sm_event(p_cb, SMP_AUTH_CMPL_EVT, &status);
    } else {
        SMP_TRACE_DEBUG("p_cb->rand_enc_proc_state=%d\n", p_cb->rand_enc_proc_state);
        switch (p_cb->rand_enc_proc_state) {
        case 128:
            smp_process_confirm(p_cb, &output);
            break;

        case 129:
            smp_process_compare(p_cb, &output);
            break;
        }
    }
}
