
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int p_data; int key_type; } ;
typedef TYPE_1__ tSMP_KEY ;
struct TYPE_9__ {int param_buf; } ;
typedef TYPE_2__ tSMP_ENC ;
struct TYPE_10__ {int loc_enc_size; } ;
typedef TYPE_3__ tSMP_CB ;


 int SMP_KEY_READY_EVT ;
 int SMP_KEY_TYPE_STK ;
 int SMP_TRACE_DEBUG (char*) ;
 int SMP_TRACE_ERROR (char*) ;
 int smp_mask_enc_key (int ,int ) ;
 int smp_sm_event (TYPE_3__*,int ,TYPE_1__*) ;

__attribute__((used)) static void smp_process_stk(tSMP_CB *p_cb, tSMP_ENC *p)
{
    tSMP_KEY key;

    SMP_TRACE_DEBUG ("smp_process_stk ");

    SMP_TRACE_ERROR("STK Generated");

    smp_mask_enc_key(p_cb->loc_enc_size, p->param_buf);

    key.key_type = SMP_KEY_TYPE_STK;
    key.p_data = p->param_buf;

    smp_sm_event(p_cb, SMP_KEY_READY_EVT, &key);
}
