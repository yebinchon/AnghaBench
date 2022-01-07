
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef int thread_state_t ;
typedef int thread_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_2__ {int * cpu_int_state; } ;





 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ current_thread () ;
 TYPE_1__* getCpuDatap () ;
 int handle_get_arm32_thread_state (int ,int *,int *) ;
 int handle_get_arm64_thread_state (int ,int *,int *) ;
 int handle_get_arm_thread_state (int ,int *,int *) ;

kern_return_t
machine_thread_get_kern_state(
         thread_t thread,
         thread_flavor_t flavor,
         thread_state_t tstate,
         mach_msg_type_number_t * count)
{



 if (thread != current_thread() || getCpuDatap()->cpu_int_state == ((void*)0))
  return KERN_FAILURE;

 switch (flavor) {
 case 130:
 {
  kern_return_t rn = handle_get_arm_thread_state(tstate, count, getCpuDatap()->cpu_int_state);
  if (rn) return rn;
  break;
 }
 case 129:
 {
  kern_return_t rn = handle_get_arm32_thread_state(tstate, count, getCpuDatap()->cpu_int_state);
  if (rn) return rn;
  break;
 }
 default:
  return (KERN_INVALID_ARGUMENT);
 }
 return (KERN_SUCCESS);
}
