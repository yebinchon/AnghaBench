
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_t ;
struct os_reason {int dummy; } ;
typedef int proc_t ;


 int PSIG_VFORK ;
 int psignal_internal (int ,int ,int ,int ,int,struct os_reason*) ;

void
psignal_vfork_with_reason(proc_t p, task_t new_task, thread_t thread, int signum, struct os_reason *signal_reason)
{
 psignal_internal(p, new_task, thread, PSIG_VFORK, signum, signal_reason);
}
