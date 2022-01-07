
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int temp_cred ;
struct ucred {int dummy; } ;
typedef TYPE_1__* posix_cred_t ;
typedef struct ucred* kauth_cred_t ;
struct TYPE_3__ {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_gmuid; int cr_flags; } ;


 int CRF_NOMEMBERD ;
 scalar_t__ KAUTH_UID_NONE ;
 int NULLCRED_CHECK (struct ucred*) ;
 int TRUE ;
 int bcopy (struct ucred*,struct ucred*,int) ;
 struct ucred* kauth_cred_update (struct ucred*,struct ucred*,int ) ;
 TYPE_1__* posix_cred_get (struct ucred*) ;

kauth_cred_t
kauth_cred_setresuid(kauth_cred_t cred, uid_t ruid, uid_t euid, uid_t svuid, uid_t gmuid)
{
 struct ucred temp_cred;
 posix_cred_t temp_pcred = posix_cred_get(&temp_cred);
 posix_cred_t pcred = posix_cred_get(cred);

 NULLCRED_CHECK(cred);





 if ((euid == KAUTH_UID_NONE || pcred->cr_uid == euid) &&
     (ruid == KAUTH_UID_NONE || pcred->cr_ruid == ruid) &&
     (svuid == KAUTH_UID_NONE || pcred->cr_svuid == svuid) &&
     (pcred->cr_gmuid == gmuid)) {

  return(cred);
 }





 bcopy(cred, &temp_cred, sizeof(temp_cred));
 if (euid != KAUTH_UID_NONE) {
  temp_pcred->cr_uid = euid;
 }
 if (ruid != KAUTH_UID_NONE) {
  temp_pcred->cr_ruid = ruid;
 }
 if (svuid != KAUTH_UID_NONE) {
  temp_pcred->cr_svuid = svuid;
 }






 if ((temp_pcred->cr_gmuid = gmuid) == KAUTH_UID_NONE) {
  temp_pcred->cr_flags |= CRF_NOMEMBERD;
 }

 return(kauth_cred_update(cred, &temp_cred, TRUE));
}
