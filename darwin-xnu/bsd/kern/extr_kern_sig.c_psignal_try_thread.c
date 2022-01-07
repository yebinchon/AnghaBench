
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int proc_t ;


 int PSIG_TRY_THREAD ;
 int psignal_internal (int ,int *,int ,int ,int,int *) ;

void
psignal_try_thread(proc_t p, thread_t thread, int signum)
{
 psignal_internal(p, ((void*)0), thread, PSIG_TRY_THREAD, signum, ((void*)0));
}
