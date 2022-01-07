
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktrace_assert_lock_held () ;
 int ktrace_ownership_maintenance () ;
 int ktrace_owning_pid ;

int
ktrace_get_owning_pid(void)
{
 ktrace_assert_lock_held();

 ktrace_ownership_maintenance();
 return ktrace_owning_pid;
}
