
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int cpu_data_t ;


 int FALSE ;
 int cpu_signal_internal (int *,unsigned int,void*,void*,int ) ;

kern_return_t
cpu_signal(cpu_data_t *target_proc,
    unsigned int signal,
    void *p0,
    void *p1)
{
 return cpu_signal_internal(target_proc, signal, p0, p1, FALSE);
}
