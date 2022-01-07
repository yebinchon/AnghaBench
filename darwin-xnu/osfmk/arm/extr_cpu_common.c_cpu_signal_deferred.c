
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int cpu_data_t ;


 int SIGPnop ;
 int TRUE ;
 int cpu_signal_internal (int *,int ,int *,int *,int ) ;

kern_return_t
cpu_signal_deferred(cpu_data_t *target_proc)
{
 return cpu_signal_internal(target_proc, SIGPnop, ((void*)0), ((void*)0), TRUE);
}
