
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 int PWAIT ;
 int VERIFY (int ) ;
 int pf_purge_thread_cont ;
 int tsleep0 (void (*) (void*,int ),int ,char*,int ,int ) ;

void
pf_purge_thread_fn(void *v, wait_result_t w)
{
#pragma unused(v, w)
 (void) tsleep0(pf_purge_thread_fn, PWAIT, "pf_purge", 0,
     pf_purge_thread_cont);




 VERIFY(0);
}
