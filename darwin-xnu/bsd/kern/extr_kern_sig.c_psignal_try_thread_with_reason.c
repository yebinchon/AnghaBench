
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct os_reason {int dummy; } ;
typedef int proc_t ;


 int PSIG_TRY_THREAD ;
 int TASK_NULL ;
 int psignal_internal (int ,int ,int ,int ,int,struct os_reason*) ;

void
psignal_try_thread_with_reason(proc_t p, thread_t thread, int signum, struct os_reason *signal_reason)
{
 psignal_internal(p, TASK_NULL, thread, PSIG_TRY_THREAD, signum, signal_reason);
}
