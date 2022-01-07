
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* posix_cred_t ;
typedef TYPE_2__* kauth_cred_t ;
struct TYPE_17__ {int cr_audit; } ;
struct TYPE_16__ {int cr_flags; int cr_ngroups; int * cr_groups; void* cr_gmuid; int cr_svgid; int cr_rgid; int cr_svuid; int cr_ruid; void* cr_uid; } ;


 int AUDIT_SESSION_UNREF (TYPE_2__*) ;
 int CRF_NOMEMBERD ;
 int FREE_ZONE (TYPE_2__*,int,int ) ;
 int KAUTH_CRED_HASH_LOCK () ;
 int KAUTH_CRED_HASH_LOCK_ASSERT () ;
 int KAUTH_CRED_HASH_UNLOCK () ;
 void* KAUTH_UID_NONE ;
 int M_CRED ;
 int bcopy (int *,int *,int) ;
 int kauth_cred_add (TYPE_2__*) ;
 TYPE_2__* kauth_cred_alloc () ;
 TYPE_2__* kauth_cred_find (TYPE_2__*) ;
 int kauth_cred_ismember_gid (TYPE_2__*,int ,int*) ;
 int kauth_cred_ref (TYPE_2__*) ;
 int mac_cred_label_destroy (TYPE_2__*) ;
 TYPE_1__* posix_cred_get (TYPE_2__*) ;

kauth_cred_t
kauth_cred_create(kauth_cred_t cred)
{
 kauth_cred_t found_cred, new_cred = ((void*)0);
 posix_cred_t pcred = posix_cred_get(cred);
 int is_member = 0;

 KAUTH_CRED_HASH_LOCK_ASSERT();

 if (pcred->cr_flags & CRF_NOMEMBERD) {
  pcred->cr_gmuid = KAUTH_UID_NONE;
 } else {
  if (!kauth_cred_ismember_gid(cred, 0, &is_member)) {





   pcred->cr_gmuid = pcred->cr_uid;
  } else {
   pcred->cr_gmuid = KAUTH_UID_NONE;
   pcred->cr_flags |= CRF_NOMEMBERD;
  }
 }


 if (pcred->cr_ngroups < 1)
  return(((void*)0));

 for (;;) {
  KAUTH_CRED_HASH_LOCK();
  found_cred = kauth_cred_find(cred);
  if (found_cred != ((void*)0)) {




   kauth_cred_ref(found_cred);
   KAUTH_CRED_HASH_UNLOCK();
   return(found_cred);
  }
  KAUTH_CRED_HASH_UNLOCK();





  new_cred = kauth_cred_alloc();
  if (new_cred != ((void*)0)) {
   int err;
   posix_cred_t new_pcred = posix_cred_get(new_cred);
   new_pcred->cr_uid = pcred->cr_uid;
   new_pcred->cr_ruid = pcred->cr_ruid;
   new_pcred->cr_svuid = pcred->cr_svuid;
   new_pcred->cr_rgid = pcred->cr_rgid;
   new_pcred->cr_svgid = pcred->cr_svgid;
   new_pcred->cr_gmuid = pcred->cr_gmuid;
   new_pcred->cr_ngroups = pcred->cr_ngroups;
   bcopy(&pcred->cr_groups[0], &new_pcred->cr_groups[0], sizeof(new_pcred->cr_groups));




   new_pcred->cr_flags = pcred->cr_flags;

   KAUTH_CRED_HASH_LOCK();
   err = kauth_cred_add(new_cred);
   KAUTH_CRED_HASH_UNLOCK();


   if (err == 0)
    break;



   AUDIT_SESSION_UNREF(new_cred);

   FREE_ZONE(new_cred, sizeof(*new_cred), M_CRED);
   new_cred = ((void*)0);
  }
 }

 return(new_cred);
}
