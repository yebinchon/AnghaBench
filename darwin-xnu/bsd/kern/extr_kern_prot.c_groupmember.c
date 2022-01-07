
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;
typedef int gid_t ;


 scalar_t__ kauth_cred_ismember_gid (int ,int ,int*) ;

int
groupmember(gid_t gid, kauth_cred_t cred)
{
 int is_member;

 if (kauth_cred_ismember_gid(cred, gid, &is_member) == 0 && is_member)
  return (1);
 return (0);
}
