
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int temp_cred ;
struct ucred {int cr_svgid; int cr_svuid; } ;
typedef TYPE_1__* posix_cred_t ;
typedef struct ucred* kauth_cred_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__ cr_svgid; int cr_svuid; } ;


 int DEBUG_CRED_CHANGE (char*) ;
 int DEBUG_CRED_ENTER (char*,struct ucred*,int ,int ,int ,scalar_t__) ;
 int NULLCRED_CHECK (struct ucred*) ;
 int TRUE ;
 int bcopy (struct ucred*,struct ucred*,int) ;
 struct ucred* kauth_cred_update (struct ucred*,struct ucred*,int ) ;
 TYPE_1__* posix_cred_get (struct ucred*) ;

kauth_cred_t
kauth_cred_setsvuidgid(kauth_cred_t cred, uid_t uid, gid_t gid)
{
 struct ucred temp_cred;
 posix_cred_t temp_pcred = posix_cred_get(&temp_cred);
 posix_cred_t pcred;

 NULLCRED_CHECK(cred);

 pcred = posix_cred_get(cred);

 DEBUG_CRED_ENTER("kauth_cred_setsvuidgid: %p u%d->%d g%d->%d\n", cred, cred->cr_svuid, uid, cred->cr_svgid, gid);






 if (pcred->cr_svuid == uid && pcred->cr_svgid == gid) {

  return(cred);
 }
 DEBUG_CRED_CHANGE("kauth_cred_setsvuidgid: cred change\n");




 bcopy(cred, &temp_cred, sizeof(temp_cred));
 temp_pcred->cr_svuid = uid;
 temp_pcred->cr_svgid = gid;

 return(kauth_cred_update(cred, &temp_cred, TRUE));
}
