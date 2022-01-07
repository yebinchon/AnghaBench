
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct exception_action {TYPE_2__* port; } ;
typedef int lck_mtx_t ;
typedef int kern_return_t ;
typedef TYPE_2__* ipc_port_t ;
typedef size_t exception_type_t ;
struct TYPE_7__ {scalar_t__ ip_receiver; } ;
struct TYPE_6__ {scalar_t__ itk_space; } ;


 size_t EXC_CRASH ;
 scalar_t__ IP_VALID (TYPE_2__*) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 TYPE_1__* current_task () ;
 scalar_t__ ip_active (TYPE_2__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

kern_return_t
check_exc_receiver_dependency(
 exception_type_t exception,
 struct exception_action *excp,
 lck_mtx_t *mutex)
{
 kern_return_t retval = KERN_SUCCESS;

 if (excp == ((void*)0) || exception != EXC_CRASH)
  return retval;

 task_t task = current_task();
 lck_mtx_lock(mutex);
 ipc_port_t xport = excp[exception].port;
 if ( IP_VALID(xport)
       && ip_active(xport)
       && task->itk_space == xport->ip_receiver)
  retval = KERN_FAILURE;
 lck_mtx_unlock(mutex);
 return retval;
}
