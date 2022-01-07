
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSMP_STATUS ;
typedef int tSMP_INT_DATA ;
typedef int tSMP_ENC ;
struct TYPE_5__ {int enc_rand; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int BT_OCTET16 ;


 int BTM_GetDeviceDHK (int ) ;
 int BT_OCTET16_LEN ;
 int BT_OCTET8_LEN ;
 int SMP_AUTH_CMPL_EVT ;
 int SMP_Encrypt (int ,int ,int ,int ,int *) ;
 int SMP_PAIR_FAIL_UNKNOWN ;
 int SMP_TRACE_DEBUG (char*) ;
 int SMP_TRACE_ERROR (char*) ;
 int UNUSED (int *) ;
 int smp_process_ediv (TYPE_1__*,int *) ;
 int smp_sm_event (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void smp_generate_y(tSMP_CB *p_cb, tSMP_INT_DATA *p)
{
    UNUSED(p);

    BT_OCTET16 dhk;
    tSMP_ENC output;
    tSMP_STATUS status = SMP_PAIR_FAIL_UNKNOWN;


    SMP_TRACE_DEBUG ("smp_generate_y \n");
    BTM_GetDeviceDHK(dhk);

    if (!SMP_Encrypt(dhk, BT_OCTET16_LEN, p_cb->enc_rand,
                     BT_OCTET8_LEN, &output)) {
        SMP_TRACE_ERROR("smp_generate_y failed");
        smp_sm_event(p_cb, SMP_AUTH_CMPL_EVT, &status);
    } else {
        smp_process_ediv(p_cb, &output);
    }
}
