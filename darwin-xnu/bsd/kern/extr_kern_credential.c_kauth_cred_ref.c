
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* kauth_cred_t ;
struct TYPE_5__ {int cr_ref; } ;


 int NULLCRED_CHECK (TYPE_1__*) ;
 int OSAddAtomicLong (int,long*) ;
 int get_backtrace () ;
 scalar_t__ is_target_cred (TYPE_1__*) ;
 int panic (char*) ;

void
kauth_cred_ref(kauth_cred_t cred)
{
 int old_value;

 NULLCRED_CHECK(cred);

 old_value = OSAddAtomicLong(1, (long*)&cred->cr_ref);

 if (old_value < 1)
  panic("kauth_cred_ref: trying to take a reference on a cred with no references");







 return;
}
