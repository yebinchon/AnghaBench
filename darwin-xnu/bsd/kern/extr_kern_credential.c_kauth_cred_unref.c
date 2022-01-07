
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* kauth_cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ cr_ref; } ;


 int AUDIT_SESSION_UNREF (TYPE_1__*) ;
 int FREE_ZONE (TYPE_1__*,int,int ) ;
 int KAUTH_CRED_HASH_LOCK () ;
 int KAUTH_CRED_HASH_UNLOCK () ;
 int M_CRED ;
 TYPE_1__* NOCRED ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ kauth_cred_unref_hashlocked (TYPE_1__**) ;
 int mac_cred_label_destroy (TYPE_1__*) ;

void
kauth_cred_unref(kauth_cred_t *credp)
{
 boolean_t destroy_it;

 KAUTH_CRED_HASH_LOCK();
 destroy_it = kauth_cred_unref_hashlocked(credp);
 KAUTH_CRED_HASH_UNLOCK();

 if (destroy_it == TRUE) {
  assert(*credp != NOCRED);



  AUDIT_SESSION_UNREF(*credp);

  (*credp)->cr_ref = 0;
  FREE_ZONE(*credp, sizeof(*(*credp)), M_CRED);
  *credp = NOCRED;
 }
}
