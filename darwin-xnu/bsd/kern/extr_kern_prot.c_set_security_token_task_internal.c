
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef TYPE_3__* uthread_t ;
typedef scalar_t__ task_t ;
struct TYPE_24__ {scalar_t__* val; } ;
typedef TYPE_4__ security_token_t ;
typedef TYPE_5__* proc_t ;
typedef TYPE_6__* posix_cred_t ;
typedef TYPE_7__* kauth_cred_t ;
typedef scalar_t__ host_priv_t ;
struct TYPE_28__ {int * val; } ;
typedef TYPE_8__ audit_token_t ;
struct TYPE_22__ {TYPE_1__* as_aia_p; } ;
struct TYPE_27__ {TYPE_2__ cr_audit; } ;
struct TYPE_26__ {int cr_rgid; int cr_ruid; int cr_gid; int cr_uid; } ;
struct TYPE_25__ {int p_idversion; int p_pid; } ;
struct TYPE_23__ {int uu_flag; } ;
struct TYPE_21__ {int ai_asid; int ai_auid; } ;


 scalar_t__ HOST_PRIV_NULL ;
 scalar_t__ IS_VALID_CRED (TYPE_7__*) ;
 scalar_t__ KERN_SUCCESS ;
 int UT_VFORK ;
 scalar_t__ current_task () ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 scalar_t__ host_priv_self () ;
 int host_security_self () ;
 scalar_t__ host_security_set_task_token (int ,scalar_t__,TYPE_4__,TYPE_8__,scalar_t__) ;
 scalar_t__ kauth_cred_getgid (TYPE_7__*) ;
 scalar_t__ kauth_cred_getuid (TYPE_7__*) ;
 TYPE_7__* kauth_cred_proc_ref (TYPE_5__*) ;
 int kauth_cred_unref (TYPE_7__**) ;
 scalar_t__ mac_system_check_host_priv (TYPE_7__*) ;
 TYPE_6__* posix_cred_get (TYPE_7__*) ;
 int task_importance_update_owner_info (scalar_t__) ;

int
set_security_token_task_internal(proc_t p, void *t)
{
 security_token_t sec_token;
 audit_token_t audit_token;
 kauth_cred_t my_cred;
 posix_cred_t my_pcred;
 host_priv_t host_priv;
 task_t task = t;







 if (task == current_task()) {
  uthread_t uthread;
  uthread = (uthread_t)get_bsdthread_info(current_thread());
  if (uthread->uu_flag & UT_VFORK)
   return (1);
 }

 my_cred = kauth_cred_proc_ref(p);
 my_pcred = posix_cred_get(my_cred);


 if (IS_VALID_CRED(my_cred)) {
  sec_token.val[0] = kauth_cred_getuid(my_cred);
  sec_token.val[1] = kauth_cred_getgid(my_cred);
 } else {
  sec_token.val[0] = 0;
  sec_token.val[1] = 0;
 }
 audit_token.val[0] = my_cred->cr_audit.as_aia_p->ai_auid;
 audit_token.val[1] = my_pcred->cr_uid;
 audit_token.val[2] = my_pcred->cr_gid;
 audit_token.val[3] = my_pcred->cr_ruid;
 audit_token.val[4] = my_pcred->cr_rgid;
 audit_token.val[5] = p->p_pid;
 audit_token.val[6] = my_cred->cr_audit.as_aia_p->ai_asid;
 audit_token.val[7] = p->p_idversion;

 host_priv = (sec_token.val[0]) ? HOST_PRIV_NULL : host_priv_self();




 kauth_cred_unref(&my_cred);
 return (host_security_set_task_token(host_security_self(),
        task,
        sec_token,
        audit_token,
        host_priv) != KERN_SUCCESS);
}
