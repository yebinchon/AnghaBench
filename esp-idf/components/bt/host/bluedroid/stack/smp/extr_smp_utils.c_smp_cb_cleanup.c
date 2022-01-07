
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int static_passkey; scalar_t__ use_static_passkey; int trace_level; int * p_callback; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int tSMP_CALLBACK ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ BOOLEAN ;


 int SMP_TRACE_EVENT (char*) ;
 int memset (TYPE_1__*,int ,int) ;

void smp_cb_cleanup(tSMP_CB *p_cb)
{
    tSMP_CALLBACK *p_callback = p_cb->p_callback;
    UINT8 trace_level = p_cb->trace_level;
    UINT32 static_passkey = p_cb->static_passkey;
    BOOLEAN use_static_passkey = p_cb->use_static_passkey;
    SMP_TRACE_EVENT("smp_cb_cleanup\n");

    memset(p_cb, 0, sizeof(tSMP_CB));
    p_cb->p_callback = p_callback;
    p_cb->trace_level = trace_level;
    if(use_static_passkey) {
        p_cb->use_static_passkey = use_static_passkey;
        p_cb->static_passkey = static_passkey;
    }
}
