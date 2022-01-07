
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * p_data; int key_type; } ;
typedef TYPE_1__ tSMP_KEY ;
struct TYPE_9__ {int * param_buf; } ;
typedef TYPE_2__ tSMP_ENC ;
struct TYPE_10__ {int ediv; int div; } ;
typedef TYPE_3__ tSMP_CB ;
typedef int UINT8 ;
typedef int UINT16 ;


 int SMP_KEY_READY_EVT ;
 int SMP_KEY_TYPE_LTK ;
 int SMP_TRACE_DEBUG (char*) ;
 int STREAM_TO_UINT16 (int,int *) ;
 int smp_sm_event (TYPE_3__*,int ,TYPE_1__*) ;

__attribute__((used)) static void smp_process_ediv(tSMP_CB *p_cb, tSMP_ENC *p)
{
    tSMP_KEY key;
    UINT8 *pp = p->param_buf;
    UINT16 y;

    SMP_TRACE_DEBUG ("smp_process_ediv ");
    STREAM_TO_UINT16(y, pp);


    p_cb->ediv = p_cb->div ^ y;

    SMP_TRACE_DEBUG("LTK ready");
    key.key_type = SMP_KEY_TYPE_LTK;
    key.p_data = p->param_buf;

    smp_sm_event(p_cb, SMP_KEY_READY_EVT, &key);
}
