
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int current_proc () ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_issuser (int ) ;
 int ktrace_assert_lock_held () ;
 scalar_t__ ktrace_owning_unique_id ;
 scalar_t__ proc_uniqueid (int ) ;

int
ktrace_read_check(void)
{
 ktrace_assert_lock_held();

 if (proc_uniqueid(current_proc()) == ktrace_owning_unique_id)
 {
  return 0;
 }

 return kauth_cred_issuser(kauth_cred_get()) ? 0 : EPERM;
}
