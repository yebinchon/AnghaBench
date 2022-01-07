
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int boolean_t ;


 int OS_REASON_NULL ;
 int exit_with_reason (int ,int,int*,int ,int ,int,int ) ;

int
exit1_internal(proc_t p, int rv, int *retval, boolean_t thread_can_terminate, boolean_t perf_notify,
        int jetsam_flags)
{
 return exit_with_reason(p, rv, retval, thread_can_terminate, perf_notify, jetsam_flags, OS_REASON_NULL);
}
