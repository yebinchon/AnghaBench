
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int EINVAL ;
 int ESRCH ;
 int ktrace_assert_lock_held () ;
 int ktrace_keep_ownership_on_reset ;
 int ktrace_set_invalid_owning_pid () ;
 int ktrace_set_owning_proc (int ) ;
 int proc_find (int) ;
 int proc_rele (int ) ;

int
ktrace_set_owning_pid(int pid)
{
 ktrace_assert_lock_held();


 if (pid == -1) {
  ktrace_set_invalid_owning_pid();
  return 0;
 }


 if (pid == 0) {
  ktrace_set_invalid_owning_pid();
  return EINVAL;
 }

 proc_t p = proc_find(pid);
 if (!p) {
  ktrace_set_invalid_owning_pid();
  return ESRCH;
 }

 ktrace_keep_ownership_on_reset = 1;
 ktrace_set_owning_proc(p);

 proc_rele(p);
 return 0;
}
