
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 scalar_t__ kauth_cred_getuid (int ) ;

int
kauth_cred_issuser(kauth_cred_t cred)
{
 return(kauth_cred_getuid(cred) == 0);
}
