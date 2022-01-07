
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ thread_t ;


 int act_set_kperf (scalar_t__) ;
 scalar_t__ current_thread () ;
 int kperf_get_thread_flags (scalar_t__) ;
 int kperf_set_thread_flags (scalar_t__,int) ;
 int panic (char*) ;

int
kperf_ast_pend(thread_t thread, uint32_t set_flags)
{

 if (thread != current_thread()) {
  panic("pending to non-current thread");
 }


 uint32_t flags = kperf_get_thread_flags(thread);


 if (!(flags & set_flags)) {

  flags |= set_flags;
  kperf_set_thread_flags(thread, flags);


  act_set_kperf(thread);
  return 1;
 }

 return 0;
}
