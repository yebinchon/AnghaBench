
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tSMP_CALLBACK ;
struct TYPE_2__ {int * p_callback; int state; } ;
typedef int BOOLEAN ;


 int SMP_TRACE_ERROR (char*) ;
 int SMP_TRACE_EVENT (char*,int ) ;
 int TRUE ;
 TYPE_1__ smp_cb ;

BOOLEAN SMP_Register (tSMP_CALLBACK *p_cback)
{
    SMP_TRACE_EVENT ("SMP_Register state=%d", smp_cb.state);

    if (smp_cb.p_callback != ((void*)0)) {
        SMP_TRACE_ERROR ("SMP_Register: duplicate registration, overwrite it");
    }
    smp_cb.p_callback = p_cback;

    return (TRUE);

}
