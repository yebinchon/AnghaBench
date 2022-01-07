
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef TYPE_2__* proc_t ;
typedef scalar_t__ kauth_cred_t ;
struct TYPE_7__ {scalar_t__ p_ucred; } ;
struct TYPE_6__ {scalar_t__ uu_ucred; int uu_flag; } ;


 scalar_t__ IS_VALID_CRED (scalar_t__) ;
 int UT_SETUID ;
 scalar_t__ kauth_cred_proc_ref (TYPE_2__*) ;
 int kauth_cred_unref (scalar_t__*) ;

void
kauth_cred_uthread_update(uthread_t uthread, proc_t proc)
{
 if (uthread->uu_ucred != proc->p_ucred &&
     (uthread->uu_flag & UT_SETUID) == 0) {
  kauth_cred_t old = uthread->uu_ucred;
  uthread->uu_ucred = kauth_cred_proc_ref(proc);
  if (IS_VALID_CRED(old))
   kauth_cred_unref(&old);
 }
}
