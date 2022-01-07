
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp_cred ;
struct ucred {int dummy; } ;
typedef TYPE_1__* posix_cred_t ;
typedef struct ucred* kauth_cred_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__* cr_groups; scalar_t__ cr_rgid; scalar_t__ cr_svgid; int cr_gmuid; int cr_flags; } ;


 int CRF_NOMEMBERD ;
 int DEBUG_CRED_CHANGE (char*) ;
 int DEBUG_CRED_ENTER (char*,struct ucred*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ KAUTH_GID_NONE ;
 int KAUTH_UID_NONE ;
 int NULLCRED_CHECK (struct ucred*) ;
 int TRUE ;
 int bcopy (struct ucred*,struct ucred*,int) ;
 scalar_t__ kauth_cred_change_egid (struct ucred*,scalar_t__) ;
 struct ucred* kauth_cred_update (struct ucred*,struct ucred*,int ) ;
 TYPE_1__* posix_cred_get (struct ucred*) ;

kauth_cred_t
kauth_cred_setresgid(kauth_cred_t cred, gid_t rgid, gid_t egid, gid_t svgid)
{
 struct ucred temp_cred;
 posix_cred_t temp_pcred = posix_cred_get(&temp_cred);
 posix_cred_t pcred = posix_cred_get(cred);

 NULLCRED_CHECK(cred);
 DEBUG_CRED_ENTER("kauth_cred_setresgid %p %d %d %d\n", cred, rgid, egid, svgid);





 if (pcred->cr_groups[0] == egid &&
     pcred->cr_rgid == rgid &&
     pcred->cr_svgid == svgid) {

  return(cred);
 }





 bcopy(cred, &temp_cred, sizeof(temp_cred));
 if (egid != KAUTH_GID_NONE) {

  if (kauth_cred_change_egid(&temp_cred, egid)) {
   DEBUG_CRED_CHANGE("displaced!\n");
   temp_pcred->cr_flags |= CRF_NOMEMBERD;
   temp_pcred->cr_gmuid = KAUTH_UID_NONE;
  } else {
   DEBUG_CRED_CHANGE("not displaced\n");
  }
 }
 if (rgid != KAUTH_GID_NONE) {
  temp_pcred->cr_rgid = rgid;
 }
 if (svgid != KAUTH_GID_NONE) {
  temp_pcred->cr_svgid = svgid;
 }

 return(kauth_cred_update(cred, &temp_cred, TRUE));
}
