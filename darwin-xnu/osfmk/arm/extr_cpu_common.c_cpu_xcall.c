
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int cpu_data_t ;
typedef scalar_t__ broadcastFunc ;
struct TYPE_2__ {scalar_t__ cpu_data_vaddr; } ;


 TYPE_1__* CpuDataEntries ;
 int KERN_INVALID_ARGUMENT ;
 int SIGPxcall ;
 int cpu_signal (int *,int ,void*,void*) ;
 int ml_get_max_cpu_number () ;

kern_return_t
cpu_xcall(int cpu_number, broadcastFunc func, void *param)
{
 cpu_data_t *target_cpu_datap;

 if ((cpu_number < 0) || (cpu_number > ml_get_max_cpu_number()))
  return KERN_INVALID_ARGUMENT;

 target_cpu_datap = (cpu_data_t*)CpuDataEntries[cpu_number].cpu_data_vaddr;
 if (target_cpu_datap == ((void*)0))
  return KERN_INVALID_ARGUMENT;

 return cpu_signal(target_cpu_datap, SIGPxcall, (void*)func, param);
}
