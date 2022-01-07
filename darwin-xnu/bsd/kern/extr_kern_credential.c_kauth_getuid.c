
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int kauth_cred_get () ;
 int kauth_cred_getuid (int ) ;

uid_t
kauth_getuid(void)
{
 return(kauth_cred_getuid(kauth_cred_get()));
}
