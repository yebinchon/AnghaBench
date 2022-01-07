
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vm_offset_t ;
typedef TYPE_1__* tbd_ops_t ;
typedef int cpu_data_t ;
struct TYPE_4__ {void* tbd_fiq_handler; } ;


 int BootCpuData ;
 void* rtclock_timebase_addr ;
 TYPE_1__ rtclock_timebase_func ;
 void* rtclock_timebase_val ;

void ml_init_timebase(
 void *args,
 tbd_ops_t tbd_funcs,
 vm_offset_t int_address,
 vm_offset_t int_value)
{
 cpu_data_t *cpu_data_ptr;

 cpu_data_ptr = (cpu_data_t *)args;

 if ((cpu_data_ptr == &BootCpuData)
     && (rtclock_timebase_func.tbd_fiq_handler == (void *)((void*)0))) {
  rtclock_timebase_func = *tbd_funcs;
  rtclock_timebase_addr = int_address;
  rtclock_timebase_val = int_value;
 }
}
