
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {scalar_t__ active; int ith_sself; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;

 TYPE_1__* THREAD_NULL ;
 int ipc_port_copy_send (int ) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
thread_get_special_port(
 thread_t thread,
 int which,
 ipc_port_t *portp)
{
 kern_return_t result = KERN_SUCCESS;
 ipc_port_t *whichp;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 switch (which) {

 case 128:
  whichp = &thread->ith_sself;
  break;

 default:
  return (KERN_INVALID_ARGUMENT);
 }

  thread_mtx_lock(thread);

 if (thread->active)
  *portp = ipc_port_copy_send(*whichp);
 else
  result = KERN_FAILURE;

 thread_mtx_unlock(thread);

 return (result);
}
