
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_info_t ;
typedef int thread_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_7__ {scalar_t__ inspection; scalar_t__ active; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 int thread_info_internal (TYPE_1__*,int ,int ,int *) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
thread_info(
 thread_t thread,
 thread_flavor_t flavor,
 thread_info_t thread_info_out,
 mach_msg_type_number_t *thread_info_count)
{
 kern_return_t result;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active || thread->inspection)
  result = thread_info_internal(
      thread, flavor, thread_info_out, thread_info_count);
 else
  result = KERN_TERMINATED;

 thread_mtx_unlock(thread);

 return (result);
}
