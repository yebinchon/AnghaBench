
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_4__ {scalar_t__ task_debug; } ;


 int ARM_DEBUG_STATE32 ;
 int ARM_DEBUG_STATE32_COUNT ;
 int ARM_DEBUG_STATE64 ;
 int ARM_DEBUG_STATE64_COUNT ;
 int KERN_SUCCESS ;
 int machine_thread_set_state (int ,int,scalar_t__,int ) ;
 scalar_t__ task_has_64Bit_data (TYPE_1__*) ;

kern_return_t
machine_thread_inherit_taskwide(
    thread_t thread,
    task_t parent_task)
{
 if (parent_task->task_debug) {
  int flavor;
  mach_msg_type_number_t count;

  flavor = task_has_64Bit_data(parent_task) ? ARM_DEBUG_STATE64 : ARM_DEBUG_STATE32;
  count = task_has_64Bit_data(parent_task) ? ARM_DEBUG_STATE64_COUNT : ARM_DEBUG_STATE32_COUNT;

  return machine_thread_set_state(thread, flavor, parent_task->task_debug, count);
 }

 return KERN_SUCCESS;
}
