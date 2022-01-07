
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int thread_t ;
typedef scalar_t__ dtrace_id_t ;


 scalar_t__ DTRACEFLT_UNKNOWN ;
 int FALSE ;
 int TRUE ;
 int __dtrace_probe (scalar_t__,scalar_t__,scalar_t__,int,int,scalar_t__) ;
 int current_thread () ;
 int disable_preemption () ;
 int dtrace_get_thread_reentering (int ) ;
 int dtrace_getipl () ;
 scalar_t__ dtrace_probeid_error ;
 int dtrace_set_thread_reentering (int ,int ) ;
 int enable_preemption () ;

void
dtrace_probe(dtrace_id_t id, uint64_t arg0, uint64_t arg1,
    uint64_t arg2, uint64_t arg3, uint64_t arg4)
{
 thread_t thread = current_thread();
 disable_preemption();
 if (id == dtrace_probeid_error) {
  __dtrace_probe(id, arg0, arg1, arg2, arg3, arg4);
  dtrace_getipl();
 } else if (!dtrace_get_thread_reentering(thread)) {
  dtrace_set_thread_reentering(thread, TRUE);
  __dtrace_probe(id, arg0, arg1, arg2, arg3, arg4);
  dtrace_set_thread_reentering(thread, FALSE);
 }



 enable_preemption();
}
