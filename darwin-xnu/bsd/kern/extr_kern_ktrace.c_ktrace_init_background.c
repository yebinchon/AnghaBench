
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int errno_t ;


 int EINVAL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KTRACE_STATE_BG ;
 scalar_t__ KTRACE_STATE_OFF ;
 int PRIV_KTRACE_BACKGROUND ;
 int current_proc () ;
 int kauth_cred_get () ;
 int ktrace_assert_lock_held () ;
 scalar_t__ ktrace_background_available_notify_user () ;
 int ktrace_bg_pid ;
 int ktrace_bg_unique_id ;
 int ktrace_set_owning_proc (int ) ;
 scalar_t__ ktrace_state ;
 int priv_check_cred (int ,int ,int ) ;
 int proc_pid (int ) ;
 int proc_uniqueid (int ) ;
 int should_notify_on_init ;

__attribute__((used)) static errno_t
ktrace_init_background(void)
{
 int err = 0;

 ktrace_assert_lock_held();

 if ((err = priv_check_cred(kauth_cred_get(), PRIV_KTRACE_BACKGROUND, 0))) {
  return err;
 }





 if (should_notify_on_init) {
  if (ktrace_state == KTRACE_STATE_OFF) {






   if (ktrace_background_available_notify_user() == KERN_FAILURE) {
    return EINVAL;
   }
  }
  should_notify_on_init = 0;
 }

 proc_t p = current_proc();

 ktrace_bg_unique_id = proc_uniqueid(p);
 ktrace_bg_pid = proc_pid(p);

 if (ktrace_state == KTRACE_STATE_BG) {
  ktrace_set_owning_proc(p);
 }

 return 0;
}
