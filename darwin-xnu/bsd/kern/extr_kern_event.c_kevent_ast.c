
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int thread_t ;
typedef int proc_t ;


 int AST_KEVENT_REDRIVE_THREADREQ ;
 int AST_KEVENT_RETURN_TO_KERNEL ;
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ;
 int current_proc () ;
 int kevent_set_return_to_kernel_user_tsd (int ,int ) ;
 int workq_kern_threadreq_redrive (int ,int ) ;

void
kevent_ast(thread_t thread, uint16_t bits)
{
 proc_t p = current_proc();

 if (bits & AST_KEVENT_REDRIVE_THREADREQ) {
  workq_kern_threadreq_redrive(p, WORKQ_THREADREQ_CAN_CREATE_THREADS);
 }
 if (bits & AST_KEVENT_RETURN_TO_KERNEL) {
  kevent_set_return_to_kernel_user_tsd(p, thread);
 }
}
