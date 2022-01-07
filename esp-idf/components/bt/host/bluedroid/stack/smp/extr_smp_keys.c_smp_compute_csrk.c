
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSMP_STATUS ;
typedef int tSMP_INT_DATA ;
struct TYPE_8__ {int param_buf; } ;
typedef TYPE_1__ tSMP_ENC ;
struct TYPE_9__ {int div; scalar_t__ csrk; scalar_t__ smp_over_br; } ;
typedef TYPE_2__ tSMP_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_OCTET16 ;


 int BTM_GetDeviceEncRoot (int ) ;
 int BT_OCTET16_LEN ;
 int SMP_AUTH_CMPL_EVT ;
 int SMP_BR_AUTH_CMPL_EVT ;
 int SMP_Encrypt (int ,int ,int *,int,TYPE_1__*) ;
 int SMP_PAIR_FAIL_UNKNOWN ;
 int SMP_TRACE_DEBUG (char*,int) ;
 int SMP_TRACE_ERROR (char*) ;
 int UINT16_TO_STREAM (int *,int) ;
 int UNUSED (int *) ;
 int memcpy (void*,int ,int ) ;
 int smp_br_state_machine_event (TYPE_2__*,int ,int *) ;
 int smp_send_csrk_info (TYPE_2__*,int *) ;
 int smp_sm_event (TYPE_2__*,int ,int *) ;

void smp_compute_csrk(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    UNUSED(p_data);

    BT_OCTET16 er;
    UINT8 buffer[4];
    UINT16 r = 1;
    UINT8 *p = buffer;
    tSMP_ENC output;
    tSMP_STATUS status = SMP_PAIR_FAIL_UNKNOWN;

    SMP_TRACE_DEBUG ("smp_compute_csrk div=%x\n", p_cb->div);
    BTM_GetDeviceEncRoot(er);

    UINT16_TO_STREAM(p, p_cb->div);
    UINT16_TO_STREAM(p, r);

    if (!SMP_Encrypt(er, BT_OCTET16_LEN, buffer, 4, &output)) {
        SMP_TRACE_ERROR("smp_generate_csrk failed\n");
        if (p_cb->smp_over_br) {

            smp_br_state_machine_event(p_cb, SMP_BR_AUTH_CMPL_EVT, &status);

        } else {
            smp_sm_event(p_cb, SMP_AUTH_CMPL_EVT, &status);
        }
    } else {
        memcpy((void *)p_cb->csrk, output.param_buf, BT_OCTET16_LEN);
        smp_send_csrk_info(p_cb, ((void*)0));
    }
}
