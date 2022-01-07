
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int proc_t ;


 int EBUSY ;
 int EPERM ;
 scalar_t__ KTRACE_STATE_BG ;
 scalar_t__ KTRACE_STATE_FG ;
 int assert (int) ;
 int current_proc () ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 int ktrace_active_mask ;
 int ktrace_assert_lock_held () ;
 scalar_t__ ktrace_bg_unique_id ;
 int ktrace_owner_kernel ;
 int ktrace_ownership_maintenance () ;
 scalar_t__ ktrace_owning_unique_id ;
 int ktrace_set_owning_proc (int ) ;
 scalar_t__ ktrace_state ;
 scalar_t__ proc_uniqueid (int ) ;

int
ktrace_configure(uint32_t config_mask)
{
 ktrace_assert_lock_held();
 assert(config_mask != 0);

 proc_t p = current_proc();


 if (proc_uniqueid(p) == ktrace_owning_unique_id) {
  ktrace_active_mask |= config_mask;
  return 0;
 }


 if (proc_uniqueid(p) == ktrace_bg_unique_id &&
     ktrace_state == KTRACE_STATE_FG)
 {
  return EBUSY;
 }

 ktrace_ownership_maintenance();


 if (ktrace_owning_unique_id == 0 || ktrace_state == KTRACE_STATE_BG) {
  if (!kauth_cred_issuser(kauth_cred_get())) {
   return EPERM;
  }

  ktrace_owner_kernel = 0;
  ktrace_set_owning_proc(p);
  ktrace_active_mask |= config_mask;
  return 0;
 }


 return EBUSY;
}
