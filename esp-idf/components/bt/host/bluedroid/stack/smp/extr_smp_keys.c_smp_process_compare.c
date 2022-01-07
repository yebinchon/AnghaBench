
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_data; int key_type; } ;
typedef TYPE_1__ tSMP_KEY ;
struct TYPE_6__ {int param_buf; } ;
typedef TYPE_2__ tSMP_ENC ;
typedef int tSMP_CB ;
typedef int UINT8 ;


 int SMP_KEY_READY_EVT ;
 int SMP_KEY_TYPE_CMP ;
 int SMP_TRACE_DEBUG (char*) ;
 int smp_debug_print_nbyte_little_endian (int ,int const*,int) ;
 int smp_sm_event (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void smp_process_compare(tSMP_CB *p_cb, tSMP_ENC *p)
{
    tSMP_KEY key;

    SMP_TRACE_DEBUG ("smp_process_compare \n");

    SMP_TRACE_DEBUG("Compare Generated\n");
    smp_debug_print_nbyte_little_endian (p->param_buf, (const UINT8 *)"Compare", 16);

    key.key_type = SMP_KEY_TYPE_CMP;
    key.p_data = p->param_buf;

    smp_sm_event(p_cb, SMP_KEY_READY_EVT, &key);
}
