
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int kauth_cred_t ;
struct TYPE_2__ {int uu_ucred; } ;


 scalar_t__ IS_VALID_CRED (int ) ;
 int NOCRED ;
 int kauth_cred_unref (int *) ;

void
uthread_cred_free(void *uthread)
{
 uthread_t uth = (uthread_t)uthread;


 if (IS_VALID_CRED(uth->uu_ucred)) {
  kauth_cred_t oldcred = uth->uu_ucred;
  uth->uu_ucred = NOCRED;
  kauth_cred_unref(&oldcred);
 }
}
