
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_cred_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {int cr_ngroups; scalar_t__* cr_groups; scalar_t__ cr_rgid; scalar_t__ cr_svgid; } ;


 int kauth_cred_ismember_gid (int ,scalar_t__,int*) ;
 TYPE_1__* posix_cred_get (int ) ;

int
kauth_cred_gid_subset(kauth_cred_t cred1, kauth_cred_t cred2, int *resultp)
{
 int i, err, res = 1;
 gid_t gid;
 posix_cred_t pcred1 = posix_cred_get(cred1);
 posix_cred_t pcred2 = posix_cred_get(cred2);


 for (i = 0; i < pcred1->cr_ngroups; i++) {
  gid = pcred1->cr_groups[i];
  if ((err = kauth_cred_ismember_gid(cred2, gid, &res)) != 0) {
   return err;
  }

  if (!res && gid != pcred2->cr_rgid && gid != pcred2->cr_svgid) {
   *resultp = 0;
   return 0;
  }
 }


 if ((err = kauth_cred_ismember_gid(cred2, pcred1->cr_rgid, &res)) != 0) {
  return err;
 }

 if (!res && pcred1->cr_rgid != pcred2->cr_rgid &&
   pcred1->cr_rgid != pcred2->cr_svgid) {
  *resultp = 0;
  return 0;
 }


 if ((err = kauth_cred_ismember_gid(cred2, pcred1->cr_svgid, &res)) != 0){
  return err;
 }

 if (!res && pcred1->cr_svgid != pcred2->cr_rgid &&
   pcred1->cr_svgid != pcred2->cr_svgid) {
  *resultp = 0;
  return 0;
 }

 *resultp = 1;
 return 0;
}
