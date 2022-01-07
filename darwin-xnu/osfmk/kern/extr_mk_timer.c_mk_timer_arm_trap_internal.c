
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* mk_timer_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_7__ {scalar_t__ ip_kobject; } ;
struct TYPE_6__ {int lock; int active; int call_entry; int is_armed; int is_dead; TYPE_2__* port; } ;


 scalar_t__ IKOT_TIMER ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int MK_TIMER_CRITICAL ;
 int THREAD_CALL_DELAY_LEEWAY ;
 int THREAD_CALL_DELAY_USER_CRITICAL ;
 int THREAD_CALL_DELAY_USER_NORMAL ;
 int TRUE ;
 int assert (int) ;
 int current_space () ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 scalar_t__ ipc_port_translate_receive (int ,int ,TYPE_2__**) ;
 int mach_absolute_time () ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_call_enter1 (int *,int *) ;
 int thread_call_enter_delayed_with_leeway (int *,int *,int,int,int ) ;

__attribute__((used)) static kern_return_t
mk_timer_arm_trap_internal(mach_port_name_t name, uint64_t expire_time, uint64_t mk_leeway, uint64_t mk_timer_flags) {
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

  if (!timer->is_dead) {
   timer->is_armed = TRUE;

   if (expire_time > mach_absolute_time()) {
    uint32_t tcflags = THREAD_CALL_DELAY_USER_NORMAL;

    if (mk_timer_flags & MK_TIMER_CRITICAL) {
     tcflags = THREAD_CALL_DELAY_USER_CRITICAL;
    }

    if (mk_leeway != 0) {
     tcflags |= THREAD_CALL_DELAY_LEEWAY;
    }

    if (!thread_call_enter_delayed_with_leeway(
     &timer->call_entry, ((void*)0),
     expire_time, mk_leeway, tcflags)) {

     timer->active++;
    }
   } else {
    if (!thread_call_enter1(&timer->call_entry, ((void*)0)))
     timer->active++;
   }
  }

  simple_unlock(&timer->lock);
 } else {
  ip_unlock(port);
  result = KERN_INVALID_ARGUMENT;
 }
 return (result);
}
