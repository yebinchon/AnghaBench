
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPxcall ;
 int cpu_datap (int) ;
 int cpu_signal (int ,int ,void*,void*) ;

void
timer_call_nosync_cpu(int cpu, void (*fn)(void *), void *arg)
{

 cpu_signal(cpu_datap(cpu), SIGPxcall, (void *) fn, arg);
}
