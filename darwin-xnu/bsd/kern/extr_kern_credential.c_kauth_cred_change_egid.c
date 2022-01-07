
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_cred_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {int cr_ngroups; scalar_t__* cr_groups; int cr_flags; } ;


 int CRF_NOMEMBERD ;
 int DEBUG_CRED_CHANGE (char*) ;
 scalar_t__ kauth_cred_getgid (int ) ;
 scalar_t__ kauth_cred_ismember_gid (int ,scalar_t__,int*) ;
 TYPE_1__* posix_cred_get (int ) ;

__attribute__((used)) static int
kauth_cred_change_egid(kauth_cred_t cred, gid_t new_egid)
{
 int i;
 int displaced = 1;



 gid_t old_egid = kauth_cred_getgid(cred);
 posix_cred_t pcred = posix_cred_get(cred);


 for (i = 1; i < pcred->cr_ngroups; i++) {




  if (pcred->cr_groups[i] == new_egid) {
   pcred->cr_groups[i] = old_egid;
   DEBUG_CRED_CHANGE("kauth_cred_change_egid: unset displaced\n");
   displaced = 0;
   break;
  }
 }
 pcred->cr_groups[0] = new_egid;

 return (displaced);
}
