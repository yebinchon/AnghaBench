
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int PROC_NULL ;
 int PSIG_THREAD ;
 int TASK_NULL ;
 int psignal_internal (int ,int ,int ,int ,int,int *) ;

void
psignal_uthread(thread_t thread, int signum)
{
 psignal_internal(PROC_NULL, TASK_NULL, thread, PSIG_THREAD, signum, ((void*)0));
}
