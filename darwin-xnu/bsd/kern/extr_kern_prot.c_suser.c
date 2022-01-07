
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int kauth_cred_t ;


 int ASU ;
 int EPERM ;
 int IS_VALID_CRED (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int panic (char*) ;

int
suser(kauth_cred_t cred, u_short *acflag)
{




 if (kauth_cred_getuid(cred) == 0) {
  if (acflag)
   *acflag |= ASU;
  return (0);
 }
 return (EPERM);
}
