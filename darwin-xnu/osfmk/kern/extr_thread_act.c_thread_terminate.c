
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_8__ {scalar_t__ task; scalar_t__ active; } ;


 int AST_APC ;
 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* THREAD_NULL ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 scalar_t__ kernel_task ;
 int panic (char*) ;
 int thread_apc_ast (TYPE_1__*) ;
 int thread_ast_clear (TYPE_1__*,int ) ;
 int thread_terminate_internal (TYPE_1__*) ;

kern_return_t
thread_terminate(
 thread_t thread)
{
 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);


 if (thread->task == kernel_task && thread != current_thread())
  return (KERN_FAILURE);

 kern_return_t result = thread_terminate_internal(thread);






 if (thread->task == kernel_task) {
  assert(thread->active == FALSE);
  thread_ast_clear(thread, AST_APC);
  thread_apc_ast(thread);

  panic("thread_terminate");

 }

 return (result);
}
