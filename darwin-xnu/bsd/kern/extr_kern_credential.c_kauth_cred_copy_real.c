
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp_cred ;
struct ucred {int dummy; } ;
typedef TYPE_1__* posix_cred_t ;
typedef struct ucred* kauth_cred_t ;
struct TYPE_3__ {scalar_t__ cr_ruid; scalar_t__ cr_uid; scalar_t__ cr_rgid; scalar_t__ cr_gid; scalar_t__ cr_gmuid; int cr_flags; } ;


 int AUDIT_SESSION_UNREF (struct ucred*) ;
 int CRF_NOMEMBERD ;
 int FREE_ZONE (struct ucred*,int,int ) ;
 int KAUTH_CRED_HASH_LOCK () ;
 int KAUTH_CRED_HASH_UNLOCK () ;
 scalar_t__ KAUTH_UID_NONE ;
 int M_CRED ;
 int bcopy (struct ucred*,struct ucred*,int) ;
 int kauth_cred_add (struct ucred*) ;
 scalar_t__ kauth_cred_change_egid (struct ucred*,scalar_t__) ;
 struct ucred* kauth_cred_dup (struct ucred*) ;
 struct ucred* kauth_cred_find (struct ucred*) ;
 int kauth_cred_ref (struct ucred*) ;
 int mac_cred_label_destroy (struct ucred*) ;
 TYPE_1__* posix_cred_get (struct ucred*) ;

kauth_cred_t
kauth_cred_copy_real(kauth_cred_t cred)
{
 kauth_cred_t newcred = ((void*)0), found_cred;
 struct ucred temp_cred;
 posix_cred_t temp_pcred = posix_cred_get(&temp_cred);
 posix_cred_t pcred = posix_cred_get(cred);


 if ((pcred->cr_ruid == pcred->cr_uid) &&
     (pcred->cr_rgid == pcred->cr_gid)) {
  kauth_cred_ref(cred);
  return(cred);
 }





 bcopy(cred, &temp_cred, sizeof(temp_cred));
 temp_pcred->cr_uid = pcred->cr_ruid;

 if (kauth_cred_change_egid(&temp_cred, pcred->cr_rgid)) {
  temp_pcred->cr_flags |= CRF_NOMEMBERD;
  temp_pcred->cr_gmuid = KAUTH_UID_NONE;
 }




 if (temp_pcred->cr_gmuid != KAUTH_UID_NONE)
  temp_pcred->cr_gmuid = pcred->cr_ruid;

 for (;;) {
  int err;

  KAUTH_CRED_HASH_LOCK();
  found_cred = kauth_cred_find(&temp_cred);
  if (found_cred == cred) {

   KAUTH_CRED_HASH_UNLOCK();
   return(cred);
  }
  if (found_cred != ((void*)0)) {




   kauth_cred_ref(found_cred);
   KAUTH_CRED_HASH_UNLOCK();
   return(found_cred);
  }





  newcred = kauth_cred_dup(&temp_cred);
  err = kauth_cred_add(newcred);
  KAUTH_CRED_HASH_UNLOCK();


  if (err == 0)
   break;



  AUDIT_SESSION_UNREF(newcred);

  FREE_ZONE(newcred, sizeof(*newcred), M_CRED);
  newcred = ((void*)0);
 }

 return(newcred);
}
