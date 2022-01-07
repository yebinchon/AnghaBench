
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef int mach_port_name_t ;
typedef int ipc_port_t ;
struct TYPE_9__ {TYPE_1__* task; } ;
struct TYPE_8__ {int itk_space; } ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 TYPE_2__* THREAD_NULL ;
 TYPE_2__* convert_port_to_thread (int ) ;
 TYPE_2__* current_thread () ;
 int ip_reference (int ) ;
 int ip_release (int ) ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_port_translate_send (int ,int ,int *) ;
 int thread_deallocate (TYPE_2__*) ;

thread_t
port_name_to_thread_for_ulock(mach_port_name_t thread_name)
{
 thread_t thread = THREAD_NULL;
 thread_t self = current_thread();




 if (thread_name != MACH_PORT_NULL) {
  ipc_port_t port;

  if (ipc_port_translate_send(self->task->itk_space,
                              thread_name, &port) == KERN_SUCCESS) {
   ip_reference(port);
   ip_unlock(port);

   thread = convert_port_to_thread(port);
   ip_release(port);

   if (thread == THREAD_NULL) {
    return thread;
   }

   if ((thread == self) || (thread->task != self->task)) {
    thread_deallocate(thread);
    thread = THREAD_NULL;
   }
  }
 }

 return thread;
}
