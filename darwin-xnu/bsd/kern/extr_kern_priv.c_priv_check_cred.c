
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int EPERM ;
 int PRIVCHECK_DEFAULT_UNPRIVILEGED_FLAG ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int mac_priv_check (int ,int) ;
 scalar_t__ mac_priv_grant (int ,int) ;

int
priv_check_cred(kauth_cred_t cred, int priv, int flags)
{

#pragma unused(priv)

 int error;
 if (!(flags & PRIVCHECK_DEFAULT_UNPRIVILEGED_FLAG)) {






  if (kauth_cred_getuid(cred) == 0) {
   error = 0;
   goto out;
  }
 }
 error = EPERM;
out:
 return (error);
}
