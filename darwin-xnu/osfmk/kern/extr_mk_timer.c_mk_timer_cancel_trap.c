
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mk_timer_cancel_trap_args {scalar_t__ result_time; int name; } ;
typedef TYPE_2__* mk_timer_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef TYPE_3__* ipc_port_t ;
typedef int armed_time ;
struct TYPE_8__ {scalar_t__ deadline; } ;
struct TYPE_11__ {TYPE_1__ tc_call; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {int lock; scalar_t__ is_armed; int active; TYPE_4__ call_entry; TYPE_3__* port; } ;


 scalar_t__ FALSE ;
 scalar_t__ IKOT_TIMER ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ copyout (void*,scalar_t__,int) ;
 int current_space () ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 scalar_t__ ipc_port_translate_receive (int ,int ,TYPE_3__**) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 scalar_t__ thread_call_cancel (TYPE_4__*) ;

kern_return_t
mk_timer_cancel_trap(
 struct mk_timer_cancel_trap_args *args)
{
 mach_port_name_t name = args->name;
 mach_vm_address_t result_time_addr = args->result_time;
 uint64_t armed_time = 0;
 mk_timer_t timer;
 ipc_space_t myspace = current_space();
 ipc_port_t port;
 kern_return_t result;

 result = ipc_port_translate_receive(myspace, name, &port);
 if (result != KERN_SUCCESS)
  return (result);

 if (ip_kotype(port) == IKOT_TIMER) {
  timer = (mk_timer_t)port->ip_kobject;
  assert(timer != ((void*)0));
  simple_lock(&timer->lock);
  assert(timer->port == port);
  ip_unlock(port);

  if (timer->is_armed) {
   armed_time = timer->call_entry.tc_call.deadline;
   if (thread_call_cancel(&timer->call_entry))
    timer->active--;
   timer->is_armed = FALSE;
  }

  simple_unlock(&timer->lock);
 }
 else {
  ip_unlock(port);
  result = KERN_INVALID_ARGUMENT;
 }

 if (result == KERN_SUCCESS)
  if ( result_time_addr != 0 &&
    copyout((void *)&armed_time, result_time_addr,
        sizeof (armed_time)) != 0 )
   result = KERN_FAILURE;

 return (result);
}
