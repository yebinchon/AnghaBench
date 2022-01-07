
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef TYPE_1__* posix_cred_t ;
typedef int kauth_cred_t ;
typedef int gid_t ;
struct TYPE_3__ {int cr_flags; int cr_groups; int cr_ngroups; } ;


 int CRF_NOMEMBERD ;
 int KAUTH_DEBUG (char*,int) ;
 int MIN (int,int ) ;
 int NGROUPS ;
 int kauth_cred_getuid (int ) ;
 int kauth_cred_uid2groups (int *,int *,int*) ;
 scalar_t__ kauth_external_supplementary_groups_supported ;
 scalar_t__ kauth_identitysvc_has_registered ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* posix_cred_get (int ) ;

int
kauth_cred_getgroups(kauth_cred_t cred, gid_t *grouplist, int *countp)
{
 int limit = NGROUPS;
 posix_cred_t pcred;

 pcred = posix_cred_get(cred);
 if (countp) {
  limit = MIN(*countp, pcred->cr_ngroups);
  *countp = limit;
 }

 memcpy(grouplist, pcred->cr_groups, sizeof(gid_t) * limit);

 return 0;
}
