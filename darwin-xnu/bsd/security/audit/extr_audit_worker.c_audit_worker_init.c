
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_continue_t ;


 int AUDIT_WORKER_SX_INIT () ;
 scalar_t__ THREAD_NULL ;
 scalar_t__ audit_thread ;
 scalar_t__ audit_worker ;
 int kernel_thread_start (int ,int *,scalar_t__*) ;
 int panic (char*) ;

void
audit_worker_init(void)
{

 AUDIT_WORKER_SX_INIT();
 kernel_thread_start((thread_continue_t)audit_worker, ((void*)0),
     &audit_thread);
 if (audit_thread == THREAD_NULL)
  panic("audit_worker_init: Couldn't create audit_worker thread");
}
