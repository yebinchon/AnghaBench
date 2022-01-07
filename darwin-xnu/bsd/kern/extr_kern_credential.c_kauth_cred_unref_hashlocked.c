
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* kauth_cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int p_comm; } ;
struct TYPE_9__ {int cr_ref; } ;


 scalar_t__ FALSE ;
 int KAUTH_CRED_HASH_LOCK_ASSERT () ;
 TYPE_1__* NOCRED ;
 int NULLCRED_CHECK (TYPE_1__*) ;
 int OSAddAtomicLong (int,long*) ;
 TYPE_6__* current_proc () ;
 int get_backtrace () ;
 scalar_t__ is_target_cred (TYPE_1__*) ;
 scalar_t__ kauth_cred_remove (TYPE_1__*) ;
 int panic (char*,int ,TYPE_1__*) ;

__attribute__((used)) static boolean_t
kauth_cred_unref_hashlocked(kauth_cred_t *credp)
{
 int old_value;
 boolean_t destroy_it = FALSE;

 KAUTH_CRED_HASH_LOCK_ASSERT();
 NULLCRED_CHECK(*credp);

 old_value = OSAddAtomicLong(-1, (long*)&(*credp)->cr_ref);
 if (old_value < 3) {

  destroy_it = kauth_cred_remove(*credp);
 }

 if (destroy_it == FALSE) {
  *credp = NOCRED;
 }

 return (destroy_it);
}
