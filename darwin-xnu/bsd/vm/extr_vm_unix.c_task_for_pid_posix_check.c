
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef TYPE_1__* proc_t ;
typedef int kauth_cred_t ;
struct TYPE_5__ {scalar_t__ p_stat; int p_flag; } ;


 int FALSE ;
 scalar_t__ KERN_TFP_POLICY_DENY ;
 int P_SUGID ;
 scalar_t__ SZOMB ;
 int TRUE ;
 TYPE_1__* current_proc () ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getsvuid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 scalar_t__ kauth_cred_gid_subset (int ,int ,int*) ;
 scalar_t__ kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (TYPE_1__*) ;
 int kauth_cred_unref (int *) ;
 scalar_t__ tfp_policy ;

__attribute__((used)) static int
task_for_pid_posix_check(proc_t target)
{
 kauth_cred_t targetcred, mycred;
 uid_t myuid;
 int allowed;


 if (target->p_stat == SZOMB) {
  return FALSE;
 }

 mycred = kauth_cred_get();
 myuid = kauth_cred_getuid(mycred);


 if (kauth_cred_issuser(mycred))
  return TRUE;


 if (target == current_proc())
  return TRUE;





 if (tfp_policy == KERN_TFP_POLICY_DENY) {
  return FALSE;
 }

 targetcred = kauth_cred_proc_ref(target);
 allowed = TRUE;


 if ((kauth_cred_getuid(targetcred) != myuid) ||
   (kauth_cred_getruid(targetcred) != myuid) ||
   (kauth_cred_getsvuid(targetcred) != myuid)) {
  allowed = FALSE;
  goto out;
 }


 if (kauth_cred_gid_subset(targetcred, mycred, &allowed) ||
   allowed == 0) {
  allowed = FALSE;
  goto out;
 }


 if (target->p_flag & P_SUGID) {
  allowed = FALSE;
  goto out;
 }

out:
 kauth_cred_unref(&targetcred);
 return allowed;
}
