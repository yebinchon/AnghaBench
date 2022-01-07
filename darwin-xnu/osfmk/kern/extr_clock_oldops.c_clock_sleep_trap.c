
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clock_sleep_trap_args {scalar_t__ clock_name; int sleep_sec; int sleep_nsec; int wakeup_time; int sleep_type; } ;
typedef int sleep_type_t ;
typedef int mach_vm_address_t ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int * clock_t ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ MACH_PORT_NULL ;
 size_t SYSTEM_CLOCK ;
 int * clock_list ;
 scalar_t__ clock_sleep_internal (int *,int ,TYPE_1__*) ;
 int copyout (char*,int ,int) ;
 int * port_name_to_clock (scalar_t__) ;

kern_return_t
clock_sleep_trap(
 struct clock_sleep_trap_args *args)
{
 mach_port_name_t clock_name = args->clock_name;
 sleep_type_t sleep_type = args->sleep_type;
 int sleep_sec = args->sleep_sec;
 int sleep_nsec = args->sleep_nsec;
 mach_vm_address_t wakeup_time_addr = args->wakeup_time;
 clock_t clock;
 mach_timespec_t swtime = {};
 kern_return_t rvalue;




 if (clock_name == MACH_PORT_NULL)
  clock = &clock_list[SYSTEM_CLOCK];
 else
  clock = port_name_to_clock(clock_name);

 swtime.tv_sec = sleep_sec;
 swtime.tv_nsec = sleep_nsec;




 rvalue = clock_sleep_internal(clock, sleep_type, &swtime);




 if (rvalue != KERN_INVALID_ARGUMENT && rvalue != KERN_FAILURE) {
  copyout((char *)&swtime, wakeup_time_addr, sizeof(mach_timespec_t));
 }
 return (rvalue);
}
